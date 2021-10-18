import 'package:flutter/material.dart';
import 'package:taskster/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.label,
    this.hint,
    required this.onChanged,
  }) : super(key: key);

  final Widget? label;
  final String? hint;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: label,
      title: TextField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: Constants.colors['textDisabled'],
          ),
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontSize: 20.0,
        ),
        onChanged: onChanged,
      ),
      tileColor: Constants.colors['textFieldBackground'],
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      horizontalTitleGap: 10.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
    );
  }
}
