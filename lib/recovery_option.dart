import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homer_login_form/by_sms_recovery.dart';
import 'package:homer_login_form/forgot_password.dart';

class RecoveryOption extends StatefulWidget {
  const RecoveryOption({super.key});

  @override
  State<RecoveryOption> createState() => _RecoveryOptionState();
}

class _RecoveryOptionState extends State<RecoveryOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50)),
                child: Image.asset(
                  "assets/image2/IMG-20231220-WA0058.webp",
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Please select option to send link \n reset password',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 2),
                        ],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: CupertinoColors.activeBlue,
                                      ),
                                      child: Icon(
                                        Icons.mail,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                                height: 50,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Reset via email',
                                    style: TextStyle(
                                        color: CupertinoColors.activeBlue,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'If you have email link to recovery',
                                    style: TextStyle(
                                      color: CupertinoColors.activeBlue,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SmsRecovery()));
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 2),
                        ],
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: CupertinoColors.activeBlue,
                                      ),
                                      child: Icon(
                                        Icons.phone_android,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                                height: 50,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Reset via SMS',
                                    style: TextStyle(
                                        color: CupertinoColors.activeBlue,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'If you have number link to recovery',
                                    style: TextStyle(
                                      color: CupertinoColors.activeBlue,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 130,
                  ),
                  Center(
                    child: InkWell(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => FirstScreen()));
                        },
                        child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: CupertinoColors.activeBlue,
                            ),
                            child: Center(
                                child: Text(
                              'Send Link Recovery',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            )))),
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
