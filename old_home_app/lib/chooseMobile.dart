import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './mainPage.dart';
import './gridLayout.dart';

class ChooseMobile extends StatelessWidget {
  List<String> events = [
    "Android",
    "Iphone",
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
          margin: const EdgeInsets.only(top: 300.0),
          child: GridView(
                      //physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: events.map( (title) {
                return GestureDetector(
                  child: Card(
                    elevation:7,
                      margin: const EdgeInsets.all(20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: getCardByTitle(title)),  
                   onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => GridLayout(),
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
    if (title == "Android")
      img = "assets/images/android.png";
    else if (title == "Iphone")
      img = "assets/images/iphone.png";

  //the image inside the button
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Center(
          child: Container(
            child: new Stack(
              children: <Widget>[
                new Image.asset(
                  img,
                  width: 100.0,
                  height: 100.0,
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
