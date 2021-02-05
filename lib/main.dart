import 'package:code_test/bed_room.dart';
import 'package:code_test/home.dart';
import 'package:code_test/sign_in.dart';
import 'package:code_test/sing_up.dart';
import 'package:code_test/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SignIn(),
    );
  }
}


