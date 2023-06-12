/* flutter run --no-sound-null-safety */

import 'package:flutter/material.dart';
import './src/screens/HomeScreen.dart';
import './src/screens/ApiMode/Home.dart';
import 'package:splashscreen/splashscreen.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
          seconds: 8,
          navigateAfterSeconds: Home(),
          /* navigateAfterSeconds: HomeScreen(), */
          photoSize: 100,
          image: Image.asset("assets/images/img.jpg", fit: BoxFit.cover),
          backgroundColor: Colors.blue,
          styleTextUnderTheLoader: new TextStyle(),
          loaderColor: Colors.white),
    );
  }
}
