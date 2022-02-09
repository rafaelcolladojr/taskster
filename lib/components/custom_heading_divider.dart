import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskster/constants.dart';

class CustomHeadingDivider extends StatelessWidget {
  const CustomHeadingDivider({
    Key? key,
    required this.title,
    this.titleSize = 25.0,
    this.buttonText = "",
    this.scale = 1.0,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final double titleSize;
  final String buttonText;
  final double scale;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Constants.colors['text'],
            fontSize: titleSize,
            fontWeight: FontWeight.w700,
          ),
        ),
        TextButton(
          child: Text(
            buttonText,
            style: TextStyle(color: Constants.colors['primary'], fontSize: 18.sp),
          ),
          onPressed: onPressed,
        )
      ],
    );
  }
}
