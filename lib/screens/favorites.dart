import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Favorites")
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(onPressed:(){
//              button1(context);
            } ,child: new Text("Go to Screen 2"),)
          ],
        ),
      )
    );
  }
}