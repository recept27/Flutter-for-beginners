import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScream(),
    ));

class SplashScream extends StatefulWidget {
  @override
  _SplashScreamState createState() => _SplashScreamState();
}

class _SplashScreamState extends State<SplashScream> {
  @override
  void initState() {
    //here we configure the time before navigation unsing the timer from dart async
    Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.pushNamed(context, '/nextRoute');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('my splash screem'),
    );
  }
}
