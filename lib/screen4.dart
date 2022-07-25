import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterptoject/homePage1.dart';
import 'package:flutterptoject/homePage2.dart';

import 'package:fluttertoast/fluttertoast.dart';

class page4 extends StatefulWidget {
  page4({Key? key, required this.data}) : super(key: key);
  Map data = {};

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  Color iconColors = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: TextStyle(
            color: Color.fromARGB(255, 92, 19, 86),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
            ),
          )
        ],
        //elevation: 0,
        backgroundColor: Color.fromARGB(255, 251, 214, 200),
      ),
      backgroundColor: Color.fromARGB(255, 251, 214, 200),
      body: ListView(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.network(
                    widget.data["Image"].toString(),
                    height: 500,
                    width: 400,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color.fromARGB(255, 92, 19, 86),
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.all(15),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.data["Type"].toString(),
                            style: TextStyle(
                              color: Color.fromARGB(255, 92, 19, 86),
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Text(
                          widget.data["Time"].toString(),
                          style: TextStyle(
                            color: Color.fromARGB(255, 92, 19, 86),
                          ),
                        ),
                        Text(
                          widget.data["Day"].toString(),
                          style: TextStyle(
                            color: Color.fromARGB(255, 92, 19, 86),
                          ),
                        ),
                        Text(
                          widget.data["Name"].toString(),
                          style: TextStyle(
                            color: Color.fromARGB(255, 92, 19, 86),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: RaisedButton(
              color: BottomColor,
              //Color.fromARGB(255, 199, 170, 181),
              onPressed: (() {
                Fluttertoast.showToast(
                  msg: "Booked Successfuly ",
                  backgroundColor: mainColor,
                );
              }),
              child: Text(
                "Book This Class",
                style: TextStyle(
                  color: Color.fromARGB(255, 246, 230, 236),
                ),
              ),
            ),
          ),
          Center(
            child: RaisedButton(
              color: BottomColor,
              onPressed: (() {
                Navigator.pop(context);
              }),
              child: Text(
                "Go Back",
                style: TextStyle(
                  color: Color.fromARGB(255, 246, 230, 236),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
