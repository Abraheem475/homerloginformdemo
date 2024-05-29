import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmsRecovery extends StatefulWidget {
  const SmsRecovery({super.key});

  @override
  State<SmsRecovery> createState() => _SmsRecoveryState();
}

class _SmsRecoveryState extends State<SmsRecovery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Phone Verification',
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
                    'Enter Recovery Code',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'We have sent it on your email  \n abcde@gamil.com',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'This code is expire in 5 minutes',
                    style: TextStyle(
                      color: CupertinoColors.activeBlue,
                      fontSize: 17,
                    ),
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
