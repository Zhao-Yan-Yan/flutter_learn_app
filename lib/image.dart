import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
    icons += "\uE914";
    icons += " \uE000";
    icons += " \uE90D";

    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: ListView(
        children: <Widget>[
          Image(
            image: AssetImage("images/test.jpg"),
            color: Colors.cyan,
            colorBlendMode: BlendMode.plus,
          ),
          Image(
            image:
                NetworkImage("https://static.runoob.com/images/demo/demo2.jpg"),
          ),
          Image.asset("images/test.jpg"),
          Image.network("https://static.runoob.com/images/demo/demo2.jpg"),
          Text(
            icons,
            style: TextStyle(
              fontFamily: "MaterialIcons",
            ),
          ),
          Image.asset(
            "images/test.jpg",
            width: 100,
            height: 600,
            repeat: ImageRepeat.noRepeat,
            fit: BoxFit.fitHeight,
          )
        ],
      ),
    );
  }
}
