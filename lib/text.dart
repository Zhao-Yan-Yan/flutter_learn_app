import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hello",
            textAlign: TextAlign.left,
          ),
          Text(
            "Hello Hello" * 10,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Hello",
            textScaleFactor: 1.5,
          ),
          Text(
            "Hello",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w900, color: Colors.cyan),
          ),
          Text(
            "Hello World" * 8,
            textAlign: TextAlign.center,
          ),
          Text(
            "Hello world",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 2,
                fontFamily: "Courier",
                background: new Paint()..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: "HOME"),
            TextSpan(
              text: "https://flutterchina.club",
              style: TextStyle(color: Colors.blue),
              //recognizer: _tapRecognizer
            ),
          ])),
          buildDefaultTextStyle()
        ],
      ),
    );
  }

  Widget buildDefaultTextStyle() {
    return DefaultTextStyle(
      style: TextStyle(color: Colors.orange, fontSize: 20),
      textAlign: TextAlign.start,
      child: Column(
        children: <Widget>[
          Text("Text1"),
          Text("Text2"),
          Text(
            "Text3",
            style: TextStyle(color: Colors.red, inherit: false),
          ),
        ],
      ),
    );
  }
}
