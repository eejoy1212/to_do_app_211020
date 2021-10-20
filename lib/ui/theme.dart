import 'package:flutter/material.dart';

const Color blushcolor = Color(0xFF4e5ae8);
const Color yellowcolor = Color(0xFFFFB746);
const Color pinkcolor = Color(0xFFff4667);
const Color white = Colors.white;
const primaryclr = blushcolor;
const Color darkgreycolor = Color(0xFF121212);
const Color darkheadercolor = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    primaryColor: primaryclr,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    primaryColor: darkgreycolor,
    brightness: Brightness.dark,
  );
}
