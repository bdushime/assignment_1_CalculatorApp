import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final Color;
  final textColor;
  final String buttonText;
  final bool isWide; // Flag to determine if the button should be wide

  button({
    required this.Color,
    required this.textColor,
    required this.buttonText,
    this.isWide = false, // Default is not wide
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: isWide
          ? SizedBox( // Use SizedBox to control the width

        width: double.infinity, // Take full width
        child: ClipRRect( // ClipRect to handle rounded corners
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      )
          : ClipOval( // Circular button for other cases
        child: Container(
          color: Color,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
