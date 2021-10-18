import 'package:flutter/material.dart';

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
          Radius.circular(30.0),
        ),
      ),
    ),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 40.0,
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color?>(colors['primary']),
    foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
  );

  static var kWhiteTextStyle = TextStyle(
    color: Colors.white,
  );
}
