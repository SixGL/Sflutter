import 'package:flutter/material.dart';

class LeftDrawerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LeftDrawer();
  }
}

class LeftDrawer extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _getDrawer();
  }

  Widget _getDrawer() {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Center(
              //要想控制头像的大小需要用Center包裹
              child: ClipOval(
                child: Image.asset(
                  "images/z.jpg",
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            accountName: Text("Six某人"),
            accountEmail: Text("1828088521@qq.com"),
            decoration: BoxDecoration(
//              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage("images/hy.jpg"), fit: BoxFit.cover),
            ),
          ),
          _setDrawerListTitle("通讯录", Icons.book),
          Divider(),
          _setDrawerListTitle("设置", Icons.settings),
          Divider(),
          _setDrawerListTitle("指纹", Icons.fingerprint),
          Divider(),
        ],
      ),
    );
  }

  ListTile _setDrawerListTitle(String title, IconData icons) {
    return ListTile(
      //使文本更小，并将所有内容打包在一起
      dense: true,
      leading: Icon(
        icons,
        color: Colors.blue,
      ),
      contentPadding: EdgeInsets.only(left: 20, right: 20),
      title: Text(
        title,
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 15, color: Colors.black26),
      onTap: () {
        // 跳转之前先把侧边栏关闭掉
        Navigator.of(context).pop();
        Navigator.pushNamed(context, "/routeDrawerItemPage");
      },
    );
  }
}
