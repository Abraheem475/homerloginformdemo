import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                    'Password Recovery',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'We will send password recovery \n on this mail',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
                    height: 250,
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
