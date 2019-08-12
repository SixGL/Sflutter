import 'package:flutter/material.dart';

import 'HomeTabPage.dart';
import 'MeTabPage.dart';
import 'SetTabPage.dart';
import 'VideoTabPage.dart';

class TabBootomNvPage extends StatefulWidget {
  int index;

  TabBootomNvPage({this.index}) {
    if (index == null) {
      index = 0;
    }
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BootomNvPage(currentIndex: this.index);
  }
}

class BootomNvPage extends State {
  int currentIndex = 0;

  BootomNvPage({this.currentIndex});

  List _mList = [
    HomeTabPage(),
    MeTabPage(),
    SetTabPage(),
    VideoTabPage(),
  ];

  List _titleList = ["首页", "我的", "路由", "视屏"];

  List _mIcons = [
    Icon(Icons.home),
    Icon(Icons.mail),
    Icon(Icons.settings),
    Icon(Icons.video_call),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: this._mList[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        // item 选中时的颜色   不设置selectedIconTheme属性  就默认跟字体一个颜色
        unselectedItemColor: Colors.black,
        // item 未选中时的颜色   不设置unselectedIconTheme属性  就默认跟字体一个颜色

        selectedFontSize: 14,
        // 选中时字体大小
        unselectedFontSize: 14,
        // 未选中时字体大小

        iconSize: 30,
        // item图标大小

        selectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
        // 选中时字体style
        unselectedLabelStyle: TextStyle(fontStyle: FontStyle.italic),
        // 未选中时字体style

        unselectedIconTheme: IconThemeData(color: Colors.amber),
        //设置未选中时icon的颜色
        selectedIconTheme: IconThemeData(color: Colors.green),
        //设置选中时icon的颜色

//        showSelectedLabels: false, // 选中时不显示BottomNavigationBarItem的title
//        showUnselectedLabels: false,//未选中时不显示BottomNavigationBarItem的title

        type: BottomNavigationBarType.fixed,
        currentIndex: this.currentIndex,
        onTap: (index) {
          setState(() {
            this.currentIndex = index;
          });
        },
        items: [
          _getBottomNv(0),
          _getBottomNv(1),
          _getBottomNv(2),
          _getBottomNv(3)
        ],
      ),
    );
  }

  /**
   * 获取Tab的item
   * */
  BottomNavigationBarItem _getBottomNv(int index) {
    return new BottomNavigationBarItem(
      backgroundColor: Colors.amber,
      title: Text(_titleList[index]),
      icon: _mIcons[index],
    );
  }
}
