import 'package:animation/firstscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300),
            Center(
              // mainAxisAlignment: MainAxisAlignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.30),
                  CircularProgressIndicator(
                      backgroundColor: Colors.white,
                      strokeWidth: 5,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.brown)),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                      child: Text(" Loading different   types  of  animations",
                          style: TextStyle(color: Colors.brown, fontSize: 14)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
