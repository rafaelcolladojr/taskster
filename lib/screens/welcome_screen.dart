import 'package:flutter/material.dart';
import 'package:taskster/constants.dart' as constants;

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.colors['background'],
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
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)))),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color?>(
                        constants.colors['primary']),
                    foregroundColor:
                        MaterialStateProperty.all<Color?>(Colors.white),
                  ),
                  onPressed: (null),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
