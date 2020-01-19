import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Button"),
      ),
      body: Column(children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text("RaisedButton"),
        ),
        FlatButton(
          onPressed: () {},
          child: Text("FlatButton"),
        ),
        OutlineButton(
          onPressed: () {},
          child: Text("OutlineButton"),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.ac_unit),
        ),
        Text("带图标的按钮"),
        RaisedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.access_alarm),
            label: Text("RaisedButton.icon")),
        OutlineButton.icon(
            onPressed: () {},
            icon: Icon(Icons.access_alarm),
            label: Text("OutlineButton.icon")),
        FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.access_alarm),
            label: Text("FlatButton.icon")),
        Text("自定义的按钮"),
        RaisedButton(
          onPressed: () {},
          child: Text("自定义的按钮FlatButton"),
          textColor: Colors.white,
          color: Colors.amber,
          disabledColor: Colors.black54,
          highlightColor: Colors.cyan,
          splashColor: Colors.black87,
          colorBrightness: Brightness.light,
          shape: RoundedRectangleBorder(side:BorderSide.none,borderRadius:BorderRadius.circular(20) ),
        )
      ]),
    );
  }
}
