import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldDemoState();
  }
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  TextEditingController _editingController = TextEditingController();
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();

  @override
  void initState() {
    super.initState();

    ///设置默认值
    _editingController.text = '默认默认默认';

    ///设置选中状态的字符 选中baseOffset-extentOffset的字符
    _editingController.selection =
        TextSelection(baseOffset: 1, extentOffset: 2);
    _editingController.addListener(() {
      print("${_editingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_editingController.text);
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            maxLengthEnforced: false,
            maxLength: 10,
            maxLines: 1,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            autofocus: true,
            focusNode: _focusNode1,
            decoration: InputDecoration(
                labelText: "labelText",
                hintText: "hintText",
                prefixIcon: Icon(Icons.phone)),
            onChanged: (v) {
              print(v);
            },
            controller: _editingController,
          ),
          TextField(
            focusNode: _focusNode2,
            decoration: InputDecoration(
              labelText: "input2",
            ),
          ),
          buildButton(),
          TextField(
            decoration: InputDecoration(
                labelText: "自定义样式",
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red))),
          ),
          buildTheme()
        ],
      ),
    );
  }

  Widget buildButton() {
    return Row(children: <Widget>[
      RaisedButton(
        onPressed: () {
          FocusScope.of(context).requestFocus(_focusNode2);
        },
        child: Text("移动焦点"),
      ),
      RaisedButton(
        onPressed: () {
          _focusNode1.unfocus();
          _focusNode2.unfocus();
        },
        child: Text("清除焦点"),
      )
    ]);
  }

  Widget buildTheme() {
    return Theme(
      data: Theme.of(context).copyWith(
          hintColor: Colors.grey[200], //定义下划线颜色
          inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(color: Colors.grey), //定义label字体样式
              hintStyle:
                  TextStyle(color: Colors.grey, fontSize: 14.0) //定义提示文本样式
              )),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: "input4",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "input5",
            ),
          ),
        ],
      ),
    );
  }
}

/// keyboardType 输入类型
/// maxLines 最大行数
/// textInputAction 软键盘回车动作
/// autofocus 自动获得焦点
/// maxLength 最多输入的字符数
/// maxLengthEnforced 控制是否允许到达最大字符数后还能不能输入 输入框边框会变红
/// obscureText: true 密码输入
/// onChanged 输入内容监听
