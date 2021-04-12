import 'package:flutter/material.dart';
//import 'dart:io';
//import 'package:flutter/services.dart';
import './mainPage.dart';
import './constant_color.dart';
import './splash.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'PDF Viewer';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: SplashScreen(),
      );
}

