import 'package:ecommerce/Screen/loginPage.dart';
import 'package:flutter/material.dart';
import 'Config/config.dart';
import 'Screen/completeProf.dart';
import 'Screen/forgetPass.dart';
import 'Screen/register.dart';
import 'Screen/screensearsh.dart';
import 'Screen/splashscree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: routes(),
    );
  }
}
