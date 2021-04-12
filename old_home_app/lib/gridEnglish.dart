import 'package:flutter/material.dart';
import 'button_bangla.dart';


class GridEnglish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(
                           builder: (context) => ButtonBangla(),
                         ));
                      },
                      child: new Container(
                          alignment: Alignment.bottomCenter,
                          height: 150.0,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.green[900]),
                              image: new DecorationImage(
                                image: new AssetImage("assets/images/whatsapp.png"),
                                fit: BoxFit.fitWidth,
                              ),
                          ),
                          child: new Text("WhatsApp",
                              style: new TextStyle( 
                                  fontSize: 20.0, color: Colors.black),),),
                    ),
                ),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(
                           builder: (context) => ButtonBangla(),
                         ));
                      },
                      child: new Container(
                          alignment: Alignment.bottomCenter,
                          height: 150.0,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.red[800]),
                              image: new DecorationImage(
                                image: new AssetImage("assets/images/yt.png"),
                                fit: BoxFit.fitWidth,
                              ),
                          ),
                          child: new Text("Youtube",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white),textAlign: TextAlign.end,),
                                  ),
                    ),),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 20.0),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(
                           builder: (context) => ButtonBangla(),
                         ));
                      },
                      child: new Container(
                          alignment: Alignment.bottomCenter,
                          height: 150.0,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                              image: new DecorationImage(
                                
                                image: new AssetImage("assets/images/imo.png"),
                                fit: BoxFit.contain,
                              ),
                          ),
                          ),
                    ),),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 20.0),
                    child: GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(
                           builder: (context) => ButtonBangla(),
                         ));
                      },
                      child: new Container(
                          alignment: Alignment.bottomCenter,
                          height: 150.0,
                          decoration: new BoxDecoration(
                            border: Border.all(color: Colors.black),
                              image: new DecorationImage(
                                image: new AssetImage("assets/images/phone.png"),
                                fit: BoxFit.contain,
                              ),
                          ),
                          child: new Text("How To",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.black))),
                    ),),
                )
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}


