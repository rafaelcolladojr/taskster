import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskster/constants.dart';

class CustomRoundIconButton extends StatelessWidget {
  const CustomRoundIconButton({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Icon(
        icon,
        color: Constants.colors['primary'],
        size: 30.sp,
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const CircleBorder()),
        backgroundColor:
            MaterialStateProperty.all(Constants.colors['primaryLight']),
      ),
      onPressed: onPressed,
    );
  }
}
