import 'package:flutter/material.dart';
import 'package:cs_flutter/tab/BottomNvTabViewPage.dart';

class C_Page extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MeContent();
  }
}

class MeContent extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("C_Page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
           Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
             //TabBootomNvPage index 主页的构造方法接收，返回根路由，也可以指定展示对应的Tab模块
                builder: (context) => new TabBootomNvPage(index: 2)),
                   (route) => route == null);
          },
          child: Text("C_Page"),
        ),
      ),
    );
  }
}