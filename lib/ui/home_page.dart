// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app_211020/services/notification_services.dart';
import 'package:to_do_app_211020/services/theme_services.dart';
import 'package:to_do_app_211020/ui/theme.dart';
import 'package:to_do_app_211020/ui/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_typing_uninitialized_variables
  var notifyHelper;
  @override
  void initState() {
    super.initState();
    var notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          _addTaskBar(),
          Container(
            child: DatePicker(DateTime.now()),
          ),
        ],
      ),
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

  _addTaskBar() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(DateFormat.yMMMd().format(DateTime.now()),
                    style: subHeadingStyle),
                Text(
                  'Today',
                  style: headingStyle,
                ),
              ],
            ),
          ),
          MyButton(label: '+ 할 일 추가', onTap: () => print('할 일 : 밥먹기'))
        ],
      ),
    );
  }

  //나중에 theme.dart로 옮기기
  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
          //notifyHelper = NotifyHelper(); 왜 안되지...?
          NotifyHelper().displayNotification(
            title: '테마 체인지',
            body: Get.isDarkMode ? '화이트모드 활성화' : '다크모드 활성화',
          );
          NotifyHelper().scheduledNotification();
        },
        child: Icon(
          Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_round,
          size: 20,
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/profile.jpg',
          ),
        ),
        SizedBox(width: 20)
      ],
    );
  }
}
