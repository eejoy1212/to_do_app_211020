// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:to_do_app_211020/services/theme_services.dart';
import 'package:to_do_app_211020/ui/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text(
            'Theme Data',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}

_appBar() {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        ThemeService().switchTheme();
      },
      child: Icon(
        Icons.nightlight_round,
        size: 20,
      ),
    ),
    actions: [
      Icon(
        Icons.person,
        size: 20,
      ),
      SizedBox(width: 20)
    ],
  );
}
