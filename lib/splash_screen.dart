
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homer_login_form/first_screen.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context as BuildContext , MaterialPageRoute(builder: (context)=>FirstScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.activeBlue,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              Icon(
                CupertinoIcons.home,
                color: Colors.white,
                size: 50,
              ),
              Text(
                'HOMER',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Join anywhere, book anything \n              and anytime',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
