import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  static const Map<String, Color> colors = {
    'primary': Color.fromARGB(255, 126, 128, 231),
    'primaryLight': Color.fromARGB(255, 243, 242, 252),
    'secondary': Color.fromARGB(255, 240, 190, 70),
    'secondaryLight': Color.fromARGB(255, 254, 248, 233),
    'background': Colors.white,
    'text': Color.fromARGB(255, 66, 73, 96),
    'textSecondary': Color.fromARGB(190, 66, 73, 96),
    'textDisabled': Color.fromARGB(255, 168, 169, 176),
    'textFieldBackground': Color.fromARGB(255, 248, 249, 253),
  };

  static var kGetStartedButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
    ),
    padding: MaterialStateProperty.all(
      EdgeInsets.symmetric(
        vertical: 20.h,
        horizontal: 40.w,
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color?>(colors['primary']),
    foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
  );

  static const kWhiteTextStyle = TextStyle(
    color: Colors.white,
  );

  static var kHeadingOneTextStyle = TextStyle(
    color: Constants.colors['text'],
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
  );

  static var kHeadingThreeTextStyle = TextStyle(
    color: Constants.colors['textDisabled'],
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );
}
