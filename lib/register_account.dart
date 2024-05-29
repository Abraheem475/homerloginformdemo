import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homer_login_form/second_screen.dart';

class RegisterAccount extends StatefulWidget {
  const RegisterAccount({super.key});

  @override
  State<RegisterAccount> createState() => _RegisterAccountState();
}

class _RegisterAccountState extends State<RegisterAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Register Account',
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
          children: [
            Container(
              child: ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                  child: Image.asset(
                    "assets/image2/IMG-20231220-WA0058.webp",
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Crearte an account to continue ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Your Name',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    // keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email Address',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Creating an account you agree to our \n term of Service',
                        style: TextStyle(
                            color: CupertinoColors.activeBlue,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Center(
                    child: InkWell(
                        onTap: () {
                        },
                        child: Container(
                            height: 45,
                            width: 330,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: CupertinoColors.activeBlue,
                            ),
                            child: Center(
                                child: Text(
                              'Create an Account',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
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
                        "Already have an Account?",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondScreen()));
                          },
                          child: Center(
                              child: Text(
                            'Sign up',
                            style: TextStyle(
                                color: CupertinoColors.activeBlue,
                                fontSize: 17,
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
