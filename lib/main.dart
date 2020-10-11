import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mitienda_userapp/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Welcome to Flutter',
      home: Home(),
    );
  }
}