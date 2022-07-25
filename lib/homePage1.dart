import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterptoject/dispage.dart';
import 'package:flutterptoject/homePage2.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

Color backGroundColor = Color.fromARGB(255, 251, 214, 200);
Color mainColor = Color.fromARGB(255, 92, 19, 86);
Color fontColor = Color.fromARGB(255, 153, 128, 152);
Color BottomColor = Color.fromARGB(255, 72, 150, 139);

class _HomePage1State extends State<HomePage1> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Image(image: AssetImage('images/image5.png')),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              "YOGA  CLASSES",
              style: TextStyle(
                color: mainColor,
                fontSize: 30,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "ENTER YOUR FULL NAME  ",
              style: TextStyle(
                color: mainColor,
              ),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Nouf Alkhashan",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: fontColor,
                  ))),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Email: ",
              style: TextStyle(
                color: mainColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: " noufalkhashan@gmail.com",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: fontColor,
                  ))),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Phone Number:  ",
              style: TextStyle(
                color: mainColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "966552606633",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: fontColor,
                  ))),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Checkbox(
                    activeColor: mainColor,
                    checkColor: fontColor,
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = true;
                      });
                    }),
              ),
              Text(
                "Agree",
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 30,
            width: 30,
            color: //Color.fromARGB(255, 199, 170, 181),
                BottomColor,
            child: TextButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => homePage2(),
                      ));
                });
              },
              child: Text(
                "Start",
                style: TextStyle(
                    color: Color.fromARGB(255, 246, 230, 236), shadows: []),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "First time? ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 30,
            width: 30,
            color: //Color.fromARGB(255, 82, 156, 145),
                BottomColor,
            child: TextButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => discoverpage(),
                      ));
                });
              },
              child: Text(
                "Discover",
                style: TextStyle(
                    color: Color.fromARGB(255, 246, 230, 236), shadows: []),
              ),
            ),
          )
        ],
      ),
    );
  }
}
