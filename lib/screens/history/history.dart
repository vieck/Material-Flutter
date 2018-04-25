import 'package:flutter/material.dart';

class History extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Screen 2"),

      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(onPressed:(){
//              button2(context);
            } ,child: new Text("Back to Screen 1"),)
          ],
        ),
      ) ,
    );

  }
}