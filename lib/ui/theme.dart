import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app_211020/ui/add_task_bar.dart';
import 'package:to_do_app_211020/ui/widgets/button.dart';

const Color blushcolor = Color(0xFF4e5ae8);
const Color yellowcolor = Color(0xFFFFB746);
const Color pinkcolor = Color(0xFFff4667);
const Color white = Colors.white;
const primaryclr = blushcolor;
const Color darkgreycolor = Color(0xFF121212);
const Color darkheadercolor = Color(0xFF424242);

const MaterialColor SwatchWhite = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

class Themes {
  static final light = ThemeData(
    backgroundColor: Colors.white,
    primarySwatch: SwatchWhite,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    backgroundColor: darkgreycolor,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
  );
}

//나중에 theme.dart로 옮기기
TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
      // ignore: prefer_const_constructors
      textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.grey[400] : Colors.grey));
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
      // ignore: prefer_const_constructors
      textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

//나중에 theme.dart로 옮기기
TextStyle get titleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[600],
    ),
  );
}
