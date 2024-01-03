// ignore_for_file: unused_import

import 'package:fl_project/pages/myads.dart';
import 'package:fl_project/pages/newannouncement.dart';
import 'package:fl_project/pages/signup.dart';
import 'package:fl_project/pages/confirmationpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
