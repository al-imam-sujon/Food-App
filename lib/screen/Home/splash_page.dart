import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/login_page/sine_in.dart';

class Splash_Page extends StatefulWidget {
  const Splash_Page({Key? key}) : super(key: key);

  @override
  State<Splash_Page> createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, CupertinoPageRoute(builder: (context) => SineIn())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assetes/background.png'),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME TO MAA FOOD',
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w900,
                  color: Colors.deepOrangeAccent),
            ),
            SizedBox(
              height: 30,
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
