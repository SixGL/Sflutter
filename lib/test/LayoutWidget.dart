import 'dart:io';

import 'package:flutter/material.dart';

class LayoutRow extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout"),
        ),
        body: GridView.builder(
          itemCount: 10,
          itemBuilder: _getWidget,
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7),
        ),
      ),
    );
  }
}

BoxDecoration _decoration = new BoxDecoration(
  color: Color(0x66e22eee),
  borderRadius: BorderRadius.circular(5),
);

/**
 * 根据下标index 区分返回不同的widget
 * */
Widget _getWidget(BuildContext c, int index) {
  if (index == 0) {
    return Container(
      decoration: _decoration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: ClipOval(
              child: Image.asset(
                "images/s.jpg",
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "姓名",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "个人资料",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  } else if (index == 1) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: AssetImage("images/z.jpg"), fit: BoxFit.cover),
        ),
        alignment: Alignment.bottomCenter,
        child: _Container("Like小丑女,点赞"));
  } else if (index == 2) {
    return Container(
      decoration: _decoration,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5), topLeft: Radius.circular(5)),
              image: DecorationImage(
                  image: AssetImage(
                    "images/z.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              Image.asset(
                "images/z.jpg",
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "images/z.jpg",
                      width: 100,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Image.asset(
                      "images/z.jpg",
                      width: 100,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            //可以按比例“扩伸”Row、Column和Flex子widget所占用的空间。
            // 这里把剩余的控件占满了
            child: Container(
              alignment: Alignment.bottomCenter,
              child: _Container("哈利奎因 点赞"),
            ),
          )
        ],
      ),
    );
  } else if (index == 3) {
    return Container(
      decoration: _decoration,
      child: Column(
        children: <Widget>[
          // 弹性布局
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(5))),
                  height: 20,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(5))),
                  height: 20,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: _Container("Flex+Expanded"),
            ),
          )
        ],
      ),
    );
  } else {
    return Container(
      child: Text("List=$index"),
      width: 100,
      height: 100,
      color: Colors.cyan,
    );
  }
}

/**
 * 半透明背景+点赞
 * */
Widget _Container(String dec) {
  return Container(
    decoration: BoxDecoration(
        color: Color(0x66000000), borderRadius: BorderRadius.circular(5)),
    width: double.infinity,
    height: 40,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "images/like.png",
          width: 20,
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            dec,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ),
  );
}
