import 'dart:async';

import 'package:flutter/material.dart';

import '../LoginScreen/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (c)=>LoginScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;


    return Material(
      child: Scaffold(
        body: Container(
          width: _size.width,
          height: _size.height,
          child: Center(
            child: RichText(text: TextSpan(
              text: 'GOLD',
              style: TextStyle(fontSize: 35,color: Colors.amber,fontWeight: FontWeight.bold),
              children: const <TextSpan>[
                TextSpan(text: ' SELL',style: TextStyle(fontSize: 35,color: Colors.grey,fontWeight: FontWeight.bold))

              ]
            )),
          ),

        ),
      ),
    );
  }
}
