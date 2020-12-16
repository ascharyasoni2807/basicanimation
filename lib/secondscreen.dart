import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  @override
  _SecondscreenState createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Animation changeColor;
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.slowMiddle);
    changeColor =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(animation);
    controller.forward();
    animation.addListener(() => setState(() {}));

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed)
        controller.reverse(from: 100);
      else if (status == AnimationStatus.dismissed) controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Center(child: Text("Linux World")),
            margin: EdgeInsets.only(bottom: animation.value * 400),
            width: 100,
            height: 50,
            color: changeColor.value),
      ),
    );
  }
}
