import 'package:flutter/material.dart';
import 'button_bangla.dart';
import 'button_english.dart';

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //this removes the automatic back button in the AppBar
        //automaticallyImplyLeading: false,
        //text displayed in the AppBar
        //
        /*
        title: Text(
          'First Screen',
           style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w600
           ),
        ),
        */
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          /*
          Text(
            "First Screen",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,            
           ),
          ),
          */
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 15.0,
              ),
              color: Colors.pink[600],
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                      (context) => ButtonEnglish()
                    ),
                  ),
                ); 
              },
              child: Text(
                "English",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 15.0,
                ),
                color: Colors.pink[600],
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => ButtonBangla(),
                    ),
                   );
                },
                child: Text(
                  'বাংলা',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
        ],
      ),
      ),
    );
  }
}