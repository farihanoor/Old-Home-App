import 'package:flutter/material.dart';
import 'gridLayout.dart';
import './mainPage.dart';
import './gridEnglish.dart';

class ButtonEnglish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Choose Your Mobile",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            IconButton(
             icon: Image.asset("assets/images/android.png"),
             iconSize: 100,
             onPressed: () {
              Navigator.push(
                context,
                  MaterialPageRoute(
                    builder: ((context) => GridEnglish()),
                  ),
              );
             },
            ),
            Text(
              'Android', 
              style: TextStyle(
               fontSize: 20.0,
               fontWeight: FontWeight.w600
              ),
            ),
            IconButton(
             icon: Image.asset( "assets/images/iphone.png"),
             iconSize: 100,
             onPressed: () {
              Navigator.push(
                context,
                  MaterialPageRoute(
                    builder: ((context) => GridLayout()),
                  ),
              );
             },
            ),
            Text(
              'Iphone', 
              style: TextStyle(
               fontSize: 20.0,
               fontWeight: FontWeight.w600
              ),
            ),  
          ],
        ),
      ),
    );
  }
}
