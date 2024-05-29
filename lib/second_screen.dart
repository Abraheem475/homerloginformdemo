import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homer_login_form/recovery_option.dart';
import 'package:homer_login_form/register_account.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: Text(
            'Sign in',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              CupertinoIcons.back,
              color: Colors.white,
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              child: ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                  child: Image.asset(
                    "assets/image2/IMG-20231220-WA0058.webp",
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Hello there Login to Continue ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: CupertinoColors.activeBlue,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/image/fb logo.webp",
                                    height: 25,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    'Facebook',
                                    style: TextStyle(
                                        color: CupertinoColors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                      child: Text(
                    'or sign with',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        decoration: TextDecoration.underline),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email Address',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'abcd@gamil.com',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                      suffixIcon: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Passwrod',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'acd@123',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                      suffixIcon: Icon(
                        Icons.key,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RecoveryOption()));
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: CupertinoColors.activeBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationColor: CupertinoColors.activeBlue),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: InkWell(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => FirstScreen()));
                        },
                        child: Container(
                            height: 55,
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: CupertinoColors.activeBlue,
                            ),
                            child: Center(
                                child: Text(
                              'Login Account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )))),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account?",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterAccount()));
                          },
                          child: Center(
                              child: Text(
                            'Sign up',
                            style: TextStyle(
                                color: CupertinoColors.activeBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ))),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
