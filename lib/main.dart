import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: () => MaterialApp(
        title: 'Taskster',
        theme: ThemeData.light(),
        initialRoute: WelcomeScreen.route,
        debugShowCheckedModeBanner: false,
        routes: {
          WelcomeScreen.route: (context) => const WelcomeScreen(),
          OverviewScreen.route: (context) => const OverviewScreen(),
          ProjectDetailScreen.route: (context) => const ProjectDetailScreen(),
        },
      ),
    );
  }
}
