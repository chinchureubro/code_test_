import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  VoidCallback onAnimationFinished;

  AnimatedIconWidget({this.onAnimationFinished});

  @override
  _AnimatedIconWidgetState createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget> {
  double width = 30;
  double height = 30;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        width = 60;
        height = 60;
      });
      Future.delayed(const Duration(milliseconds: 1000), () {
        setState(() {
          width = 30;
          height = 30;
        });

        Future.delayed(const Duration(milliseconds: 1000), () {
          setState(() {
            width = 60;
            height = 60;
          });

          Future.delayed(const Duration(milliseconds: 1000), () {
            widget.onAnimationFinished();
          });
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            width: width,
            height: height,
            child: Image.asset('assets/Group 61.png', fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}
