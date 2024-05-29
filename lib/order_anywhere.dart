import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homer_login_form/second_screen.dart';
class OrderAnyWhere extends StatefulWidget {
  const OrderAnyWhere({super.key});

  @override
  State<OrderAnyWhere> createState() => _OrderAnyWhereState();
}

class _OrderAnyWhereState extends State<OrderAnyWhere> {
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
                'The better way',
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Order Anywhere',
                style: TextStyle(
                    color: CupertinoColors.activeBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(
                'Book from homer we guaranted \n'
                    'about your first choice room in \n'
                    'advance',
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
                width: 300,
                child: Image.asset(
                    "assets/image/orderAnywhere.webp"),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondScreen()));
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
