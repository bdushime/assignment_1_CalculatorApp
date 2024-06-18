import 'package:assignment_calculator/button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _State();
}

class _State extends State<Calculator> {
  final List<String> buttons = [
    'AC',
    '+/-',
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    '='
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(child: Container()),
              Expanded(
                  flex: 2,
                  child: Container(
                    child: GridView.builder(
                        itemCount: buttons.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1.2,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 7.0,
                        ),
                        itemBuilder: (BuildContext context, index) {
                          if(index== 0 || index== 1 || index ==2){
                            return button(
                              Color:   Colors.blueGrey.shade200,
                              textColor: Colors.white,
                              buttonText:buttons[index],isWide: false,);
                          }
                          else if(index == 16){
                            return button(
                              Color:  isOperator(buttons[index])?Colors.amber : Colors.blueGrey,
                              textColor: Colors.white,
                              buttonText:buttons[index],isWide: true,);
                          }
                          return button(
                            Color:  isOperator(buttons[index])?Colors.amber : Colors.blueGrey,
                            textColor: Colors.white,
                            buttonText:buttons[index],isWide: false,);
                        }),
                  )),
            ],
          ),
        ),
      ),
    );

  }
}
bool isOperator(String a){
  if(a=='/'||a=='x'||a=='-'||a=='+'||a=='='){
    return true;
  }else
    return false;
}
