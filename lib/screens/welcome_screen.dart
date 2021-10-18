import 'package:flutter/material.dart';
import 'package:taskster/constants.dart';
import 'package:taskster/screens/overview_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.colors['background'],
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
                  color: Constants.colors['primary'],
                  size: 40.0,
                ),
                title: Text(
                  'Taskster',
                  style: TextStyle(
                    color: Constants.colors['text'],
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
                  color: Constants.colors['text'],
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Start changing the timelife of life regularly\nin order to increase your productivity',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Constants.colors['textSecondary'],
                ),
              ),
              const Expanded(
                child: Image(
                  image: AssetImage('images/working_1.jpg'),
                  width: 300.0,
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                width: double.infinity,
                child: TextButton(
                  child: const Text(
                    'Get started',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  style: Constants.kGetStartedButtonStyle,
                  onPressed: () {
                    Navigator.pushNamed(context, OverviewScreen.route);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
