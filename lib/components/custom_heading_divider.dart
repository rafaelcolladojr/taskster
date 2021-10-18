import 'package:flutter/material.dart';
import 'package:taskster/constants.dart';

class CustomHeadingDivider extends StatelessWidget {
  const CustomHeadingDivider({
    Key? key,
    required this.title,
    required this.buttonText,
    this.scale = 1.0,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String buttonText;
  final double scale;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Constants.colors['text'],
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        TextButton(
          child: Text(
            buttonText,
            style:
                TextStyle(color: Constants.colors['primary'], fontSize: 18.0),
          ),
          onPressed: onPressed,
        )
      ],
    );
  }
}
