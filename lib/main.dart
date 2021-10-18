import 'package:flutter/material.dart';
import 'package:taskster/screens/overview_screen.dart';
import 'package:taskster/screens/project_detail_screen.dart';
import 'package:taskster/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskster',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.route,
      routes: {
        WelcomeScreen.route: (context) => const WelcomeScreen(),
        OverviewScreen.route: (context) => OverviewScreen(),
        ProjectDetailScreen.route: (context) => ProjectDetailScreen(),
      },
    );
  }
}
