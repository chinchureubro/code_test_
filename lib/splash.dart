import 'package:code_test/home.dart';
import 'package:flutter/material.dart';

import 'animated_icon_widget.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff042c38),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset('assets/Mask Group 1.png', fit: BoxFit.fill),
          ),
          AnimatedIconWidget(
            onAnimationFinished: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Let's get you started",
            style: TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
