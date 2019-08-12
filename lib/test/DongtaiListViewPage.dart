import 'package:flutter/material.dart';
//import 'package:path_provider/path_provider.dart';
import 'dart:io';

class DongtaiListViewPage extends StatelessWidget {

  DongtaiListViewPage() :super() {
    List<String> list = new List();
    for (var i = 0; i < 10; i++) {
      list.add("ListItem = $i");
    }
  }

  List<Widget> _getListItem() {
    return [
      ListTile(
        title: Text("ListTile 1"),
      ),
      ListTile(
        title: Text("ListTile 2"),
      ),
      ListTile(
        title: Text("ListTile 3"),
      ),
      ListTile(
        title: Text("ListTile 4"),
      ),
    ];
  }

  List<Widget> _getList() {
    List<Widget> list = new List();
    for (var i = 0; i < 10; i++) {
      list.add(ListTile(
          title: Text("ListTile = $i"), subtitle: Text("subtitle = $i")));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("ListView"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
//          reverse: true,
          //vertical = 默认 false：布局从上倒下   true：从下往上
          //horizontal = 默认 false：布局从左倒右   true：从右往左
//          shrinkWrap: true,
          padding: EdgeInsets.all(20),
          children: _getListItem(),
        ),
      ),
    );
  }

}
