import 'package:flutter/material.dart';

class Wrap_RaisedButton_Page extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AspectRatio、Card"),
        ),
        body:Wrap(
          runSpacing: 20,
          spacing: 10,
          children: <Widget>[
            _getWidget("按钮——1"),
            _getWidget("按钮——2"),
            _getWidget("按钮——3"),
            _getWidget("按钮——4"),
            _getWidget("按钮——5"),
            _getWidget("按钮——6"),
          ],
        ),
      ),
    );
  }

  Widget _getWidget(String btntv) {
    return RaisedButton(
      onPressed: () {
        print("sadsadasdas________");
      },
//      disabledColor: Colors.red,
      elevation: 5,
      child: Text(btntv),
      color: Colors.deepPurple,
      splashColor: Colors.amber,//点击时的水波纹颜色 ,
      highlightColor: Colors.red,//点击时的颜色
      textTheme: ButtonTextTheme.accent,
    );
  }
}


