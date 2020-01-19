import 'package:flutter/material.dart';
import 'package:flutter_learn_app/button.dart';
import 'package:flutter_learn_app/checkbox.dart';
import 'package:flutter_learn_app/image.dart';
import 'package:flutter_learn_app/state_manage.dart';
import 'package:flutter_learn_app/text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "/",
      routes: {
//        "/": (context) => MyHomePage(),
        "newRoute": (context) => NewRoute(),
        "stateRoute": (context) => ParentWidget(),
        "textRoute": (context) => TextDemo(),
        "buttonRoute": (context) => ButtonDemo(),
        "imageRoute": (context) => ImageDemo(),
        "checkRoute": (context) => CheckBoxDemo(),
      },
    );
  }
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new Route"),
      ),
      body: RaisedButton(
        onPressed: () {
          Navigator.pop(context, "back Data");
        },
        child: Text("back"),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RaisedButton(
            onPressed: () async {
              var res = await Navigator.pushNamed(context, 'newRoute');
              print(res);
            },
            child: Text("跳转"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "stateRoute");
            },
            child: Text("状态 管理"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "textRoute");
            },
            child: Text("textRoute"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "buttonRoute");
            },
            child: Text("buttonRoute"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "imageRoute");
            },
            child: Text("imageRoute"),
          ), RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, "checkRoute");
            },
            child: Text("checkRoute"),
          ),
        ],
      ),
    );
  }
}
