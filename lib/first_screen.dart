import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homer_login_form/second_screen.dart';
import 'package:homer_login_form/third_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var colorblue = CupertinoColors.activeBlue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back)),
        actions: [
          Icon(Icons.cancel),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get the transactions ',
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Easy and Secure',
                style: TextStyle(
                    color: CupertinoColors.activeBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                'As soon as the the booking is \n'
                'accepted. We provide secure \n'
                'tranaction',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                height: 300,
                width: 500,
                child: Image.asset(
                    "assets/image/WhatsApp Image 2023-12-20 at 4.20.34 PM.webp"),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FullSupport()));
                  },
                  child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: colorblue,
                      ),
                      child: Center(
                          child: Text(
                        'Next ',
                        style: TextStyle(
                            color: CupertinoColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )))),
            ],
          ),
        ),
      ),
    );
  }
}
