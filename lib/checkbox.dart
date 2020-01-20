import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CheckBoxState();
  }
}
class _CheckBoxState extends State<CheckBoxDemo>{
  bool isCheck = false;
  bool isSwitchCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("单选复选"),
      ),
      body: Column(
        children: <Widget>[
          Checkbox(value: isCheck, onChanged: (value){
            setState(() {
              isCheck = value;
            });
          }),
          Switch(value: isSwitchCheck, onChanged: (value){
            setState(() {
              isSwitchCheck = value;
            });
          }),
          
        ],
      ),
    );
  }
}

