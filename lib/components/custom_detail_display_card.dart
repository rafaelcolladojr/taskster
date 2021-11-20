import 'package:flutter/material.dart';
import 'package:taskster/constants.dart';

class CustomDetailDisplayCard extends StatelessWidget {
  const CustomDetailDisplayCard({
    Key? key,
    required this.label,
    this.child,
  }) : super(key: key);

  final String label;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Constants.kHeadingThreeTextStyle),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 8.0,
            shadowColor: Colors.black12,
            child: child,
          ),
        ),
      ],
    );
  }
}
