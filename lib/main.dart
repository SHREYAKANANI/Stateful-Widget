//first step is create a class that extends a "stateful widget" that
//returns a state in "createstate()"

//second step is create a "states" class, with properties that may change

//third step is within "state" class,implement the "build" method

//four th step is call the setstate() to make the changes.
//calling setstate() tells framework to redraw widget

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stateful Widget Example",
    home: FavoriteColor(),
    debugShowCheckedModeBanner: false,
  ));
}

//first step is create a class that extends a "stateful widget" that
//returns a state in "createstate()"
class FavoriteColor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteColorState();
  }
}

//second step is create a "states" class, with properties that may change
class _FavoriteColorState extends State<FavoriteColor> {
  String nameColor = "";

  //third step is within "state" class,implement the "build" method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(centerTitle: true, title: Text("Stateful Widget Example")),
        body: Container(
            child: Column(
              children: <Widget>[
                TextField(
                  textAlign: TextAlign.center,
                  onSubmitted: (String userInput) {
                    //four th step is call the setstate() to make the changes.
                    //calling setstate() tells framework to redraw widget
                    setState(() {
                      nameColor = userInput;
                    });
                  },
                ),
                Text(
                  "your Favorite color is $nameColor",
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            )));
  }
}
