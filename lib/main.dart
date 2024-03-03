// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:real_estatee_app/constants.dart';
import 'package:real_estatee_app/screens/home_screen.dart';
import 'package:real_estatee_app/widgets/main/main_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
      ),
      home: MainSection(),
    );
  }
}
