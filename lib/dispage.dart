import 'package:flutter/material.dart';
import 'package:flutterptoject/homePage1.dart';

class discoverpage extends StatefulWidget {
  const discoverpage({Key? key}) : super(key: key);

  @override
  State<discoverpage> createState() => _discoverpageState();
}

class _discoverpageState extends State<discoverpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backGroundColor,
        elevation: 0,
      ),
      backgroundColor: backGroundColor,
      body: ListView(
        shrinkWrap: false,
        primary: true,
        children: List.generate(
            yoga.length,
            (index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: mainColor,
                        width: 1,
                      )),
                  height: 400,
                  width: 200,
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        yoga[index]["Title"].toString(),
                        style: TextStyle(
                          color: mainColor,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          yoga[index]["Discripe"].toString(),
                          style: TextStyle(
                            color: mainColor,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image.network(
                          yoga[index]["ImageURL"].toString(),
                        ),
                      ),
                    ],
                  ),
                )),
      ),
    );
  }
}

List yoga = [
  {
    "Title": "Vinyasa Yoga",
    "Discripe":
        "Vinyasa yoga incorporates movement and breathing techniques. It creates a flow of postures with controlled breathing replicating the flow of life. For example, ",
    "ImageURL":
        "https://cdn.dribbble.com/users/6024852/screenshots/15614062/media/589df2c14deb3bb3e23d28b7953213ac.jpg?compress=1&resize=1600x1200&vertical=top"
  },
  {
    "Title": "Aerial Yoga",
    "Discripe":
        "It is suitable not only for advanced people but also for beginners. It helps to build toned and lean muscles. As opposed to traditional yoga, aerial yoga also incorporates other exercises-all while defying gravity. It has the goodness of yoga and cardio exercises like swimming or running.",
    "ImageURL":
        "https://cdn.dribbble.com/users/6024852/screenshots/15572564/media/cd76b863a9abd1d0ef23c50cf35c62dc.jpg?compress=1&resize=1600x1200&vertical=top",
  },
  {
    "Title": "Hatha Yoga",
    "Discripe":
        "Hatha yoga comprises many physical postures and positions that balance the body and mind. Different types of yoga by various schools and teachers have certain fundamental commonalities.\nResearch shows that Hatha yoga helps us destress, stay physically fit and agile, and make us look younger. In addition, Hatha yoga purifies and heals our system. Also, sustained practice leads to weight loss and toned muscles.",
    "ImageURL":
        "https://cdn.dribbble.com/users/6024852/screenshots/15565023/media/987b29bd5f82a841142900ff698e0cc3.jpg?compress=1&resize=1600x1200&vertical=top"
  },
  {
    "Title": "Ashtanga Yoga",
    "Discripe":
        "Ashtanga yoga is a direct offshoot of sage Patanjalis Yoga Sutras. Famous as the yoga form for weight loss, the ashtanga word is a derivative of the word eight in Sanskrit. ",
    "ImageURL":
        "https://cdn.dribbble.com/users/6024852/screenshots/15577906/media/5220d253e66e515cc16033ceac358548.jpg?compress=1&resize=1600x1200&vertical=top"
  }
];
