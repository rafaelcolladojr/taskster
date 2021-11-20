import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(),
                horizontalTitleGap: 5.w,
                leading: Icon(
                  Icons.check_box_outlined,
                  color: Constants.colors['primary'],
                  size: 40.sp,
                ),
                title: Text(
                  'Taskster',
                  style: TextStyle(
                    color: Constants.colors['text'],
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Text(
                'Start enjoying\na more organized\nwork life ✨',
                style: TextStyle(
                  fontSize: 38.sp,
                  fontWeight: FontWeight.w700,
                  color: Constants.colors['text'],
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Start changing the timelife of life regularly\nin order to increase your productivity',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Constants.colors['textSecondary'],
                ),
              ),
              Expanded(
                child: Image(
                  image: const AssetImage('images/working_1.jpg'),
                  width: 300.w,
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                width: double.infinity,
                child: TextButton(
                  child: Text(
                    'Get started',
                    style: TextStyle(
                      fontSize: 18.sp,
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
