import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterptoject/homePage1.dart';
import 'package:flutterptoject/screen4.dart';
import 'package:like_button/like_button.dart';

List clases = [
  {
    "Name": "Nouf",
    "Time": "10-11am",
    "Day": "Monday",
    "Type": "Vinyasa",
    "Image": "https://www.menzil.mr/assets/web/images/agents/dummy.jpeg"
  },
  {
    "Name": "Maha",
    "Time": "7-9am",
    "Day": "Tuesday",
    "Type": "Aerial",
    "Image": "https://www.menzil.mr/assets/web/images/agents/dummy.jpeg"
  },
  {
    "Name": "Aisha",
    "Time": "3-4pm",
    "Day": "Friday",
    "Type": "Hatha",
    "Image": "https://www.menzil.mr/assets/web/images/agents/dummy.jpeg"
  },
  {
    "Name": "Rahaf",
    "Time": "8-10pm",
    "Day": "Saturday",
    "Type": "Ashtanga",
    "Image": "https://www.menzil.mr/assets/web/images/agents/dummy.jpeg"
  },
  {
    "Name": "Mernan",
    "Time": "10-11am",
    "Day": "Monday",
    "Type": "Vinyasa",
    "Image": "https://www.menzil.mr/assets/web/images/agents/dummy.jpeg"
  },
  {
    "Name": "Hala",
    "Time": "7-9am",
    "Day": "Tuesday",
    "Type": "Aerial",
    "Image": "https://www.menzil.mr/assets/web/images/agents/dummy.jpeg"
  },
  {
    "Name": "JOJO",
    "Time": "3-4pm",
    "Day": "Friday",
    "Type": "Hatha",
    "Image": "https://www.menzil.mr/assets/web/images/agents/dummy.jpeg"
  },
  {
    "Name": "Haifa",
    "Time": "8-10pm",
    "Day": "Saturday",
    "Type": "Ashtanga",
    "Image": "https://www.menzil.mr/assets/web/images/agents/dummy.jpeg"
  }
];

class homePage2 extends StatefulWidget {
  const homePage2({Key? key}) : super(key: key);

  @override
  State<homePage2> createState() => _homePage2State();
}

class _homePage2State extends State<homePage2> {
  Icon iconBott = Icon(Icons.favorite);
  Color iconColors = Colors.white;
  bool iconrec = false;
  bool isLiked = false;
  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
            ),
          )
        ],
        //elevation: 0,
        backgroundColor: backGroundColor,
      ),
      backgroundColor: backGroundColor,
      body: ListView.builder(
        itemCount: clases.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Image.network(
                    clases[index]["Image"].toString(),
                    height: 200,
                    width: 100,
                    scale: 3,
                  ),
                ),
                InkWell(
                    child: Container(
                      height: 180,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: mainColor, width: 1)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Text(clases[index]["Name"].toString(),
                                // overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: mainColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600)),
                            Text(
                              clases[index]["Time"].toString(),
                              style: TextStyle(color: mainColor),
                            ),
                            Text(
                              clases[index]["Day"].toString(),
                              style: TextStyle(color: mainColor),
                            ),
                            Text(
                              clases[index]["Type"].toString(),
                              style: TextStyle(color: mainColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //Icons
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Riyadh"),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.access_alarm_rounded,
                                    color: mainColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("60min")
                                ],
                              ),
                            ),
                            LikeButton(
                              isLiked: isLiked,
                              likeCount: likeCount,
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => page4(
                                data: clases[index],
                              )),
                        ),
                      );
                    })
              ],
            ),
          );
        },
      ),
    );
  }
}
