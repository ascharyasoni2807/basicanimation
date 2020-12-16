import 'package:animation/secondscreen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(seconds: 5),
        vsync:
            this); // Links this controller to this widget so it won't run if the parent widget isn't rendered, to save on resources.

    controller.forward();
    controller.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Opacity(
          opacity: controller.value,
          child: Container(
            width: 300,
            height: 90,
            color: Colors.red,
            child: Center(child: Text("ANIMATION ")),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.next_plan),
        onPressed: () {
          Navigator.push((context),
              MaterialPageRoute(builder: (context) => Secondscreen()));
        },
      ),
    );
  }
}
