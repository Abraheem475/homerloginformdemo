import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homer_login_form/order_anywhere.dart';

class FullSupport extends StatefulWidget {
  const FullSupport({super.key});

  @override
  State<FullSupport> createState() => _FullSupportState();
}

class _FullSupportState extends State<FullSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get the services ',
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Full Support',
                style: TextStyle(
                    color: CupertinoColors.activeBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                'We are here for you and our support\n 27/4 hour hands to help you ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: 300,
                child: Image.asset("assets/image3/image3.webp"),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderAnyWhere()));
                  },
                  child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CupertinoColors.activeBlue,
                      ),
                      child: Center(
                          child: Text(
                        'Get Started ',
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
