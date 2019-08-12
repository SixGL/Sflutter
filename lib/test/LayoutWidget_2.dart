import 'package:flutter/material.dart';

class Layout2 extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack、Positioned、Align"),
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 400,
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Text("Positioned"),
                  left: 20,
                  top: 20,
                ),
                Positioned(
                  child: Text("Positioned"),
                  left: 100,
                  top: 50,
                ),
                Align(
                  // x
                  alignment: Alignment.bottomCenter,
                  child: Icon(Icons.clear),
                ),
                Align(
                  // 保存
                  alignment: Alignment.topRight,
                  child: Icon(Icons.save),
                ),
                Align(
                  // 搜索
                  alignment: Alignment(-0.8, 0),
                  child: Icon(Icons.search),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
