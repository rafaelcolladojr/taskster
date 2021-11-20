import 'package:flutter/material.dart';
import 'package:taskster/constants.dart';

class ProjectInfoListTile extends StatelessWidget {
  const ProjectInfoListTile({
    Key? key,
    required this.icon,
    required this.text,
    this.primary = true,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final bool primary;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(
            icon,
            color: primary
                ? Constants.colors['secondary']
                : Constants.colors['primary'],
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
