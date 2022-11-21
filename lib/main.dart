import 'package:flutter/material.dart';

import 'View/Screens/SplashScreen/SplashScreen.dart';


void main()=>runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

