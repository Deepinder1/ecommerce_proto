import 'dart:async';
import 'package:ecommerce_proto/HomePage.dart';
import 'package:flutter/material.dart';

//this app will be made using provider

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        fontFamily: 'poppins',
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Expanded(
          child: Icon(
            Icons.shopping_cart,
            color: Colors.amber,
            size: 90.0,
          ),
        ),
      ),
    );
  }
}
