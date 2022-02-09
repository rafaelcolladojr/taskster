import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskster/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.label,
    this.hint,
    required this.onChanged,
    this.controller,
  }) : super(key: key);

  final Widget? label;
  final String? hint;
  final Function(String) onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: label,
      title: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Constants.colors['textDisabled'],
          ),
          border: InputBorder.none,
        ),
        style: TextStyle(
          fontSize: 20.sp,
        ),
        onChanged: onChanged,
      ),
      tileColor: Constants.colors['primaryLight'],
      contentPadding: EdgeInsets.symmetric(horizontal: 25.w),
      horizontalTitleGap: 10.w,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
    );
  }
}
