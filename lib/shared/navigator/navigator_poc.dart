import 'package:flutter/material.dart';

class NavigatorPoc {
  static push(BuildContext context, Widget page, {bool replace = false}) {
    if (replace) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    }
  }
}
