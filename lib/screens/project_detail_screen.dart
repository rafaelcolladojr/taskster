import 'package:flutter/material.dart';
import 'package:taskster/components/custom_round_icon_button.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({Key? key}) : super(key: key);

  static const String route = '/project';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [CustomRoundIconButton(icon: icon)],
        ),
      ),
    );
  }
}
