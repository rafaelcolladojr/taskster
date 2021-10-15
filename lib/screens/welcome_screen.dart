import 'package:flutter/material.dart';
import 'package:taskster/constants.dart' as constants;

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(),
                horizontalTitleGap: 5.0,
                leading: Icon(
                  Icons.check_box_outlined,
                  color: constants.colors['primary'],
                  size: 40.0,
                ),
                title: Text(
                  'Taskster',
                  style: TextStyle(
                    color: constants.colors['text'],
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              Text(
                'Start enjoying\na more organized\nwork life ✨',
                style: TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.w700,
                  color: constants.colors['text'],
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Start changing the timelife of life regularly\nin order to increase your productivity',
                style: TextStyle(
                  fontSize: 16.0,
                  color: constants.colors['textSecondary'],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
