import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("进度指示器"),
      ),
      body: Column(
        children: <Widget>[
          LinearProgressIndicator(
            value: 0.5,
            valueColor: AlwaysStoppedAnimation(Colors.red),
            backgroundColor: Colors.black12,
          ),
          CircularProgressIndicator(),
          SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
