import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './mainPage.dart';

class GridLayout extends StatelessWidget {
  List<String> events = [
    "Whatsapp",
    "Family",
    "Friends",
    "Lovely",
    "Me",
    "Team",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bg.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 120.0),
          child: GridView(
            //physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: events.map( (title) {
                return GestureDetector(
                  child: Card(
                      margin: const EdgeInsets.all(20.0),
                      child: getCardByTitle(title)),
                   onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                   );
                },
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }

  Column getCardByTitle(String title) {
    String img = "";
    if (title == "Whatsapp")
      img = "assets/images/calendar.png";
    else if (title == "Family")
      img = "assets/images/family_time.png";
    else if (title == "Friends")
      img = "assets/images/friends.png";
    else if (title == "Lovely")
      img = "assets/images/lovely_time.png";
    else if (title == "Me")
      img = "assets/images/me_time.png";
    else 
      img = "assets/images/team_time.png";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Center(
          child: Container(
            child: new Stack(
              children: <Widget>[
                new Image.asset(
                  img,
                  width: 80.0,
                  height: 80.0,
                ),
              ],
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
