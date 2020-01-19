import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ParentWidgetState();
  }
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void handleChildChange(bool active) {
    setState(() {
      this._active = active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChildWidget(_active, handleChildChange),
    );
  }
}

class ChildWidget extends StatelessWidget {
  ValueChanged<bool> valueChanged;
  bool active;

  ChildWidget(this.active, this.valueChanged);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          valueChanged(!active);
        },
        child: Text("改变Parent的State currActive=$active"),
      ),
    );
  }
}
