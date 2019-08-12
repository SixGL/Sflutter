import 'package:flutter/material.dart';
//import 'package:path_provider/path_provider.dart';
import 'dart:io';
class ListViewPage extends StatelessWidget {
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
          children: <Widget>[
            ListTile(
              enabled: false, // false  onTap   onLongPress失效
              onTap: () {
                _toOnTap();
              },
              onLongPress: () {
                _toLongPress();
              },
              title: Text("ListTitle"),
              subtitle: Text("我是ListTitle的副标题"),
              leading: Icon(
                Icons.save,
                color: Color(0x99ff22ee),
              ),
              trailing: Icon(Icons.search),
            ),
            Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(150)),
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage('images/s.jpg'), fit: BoxFit.cover)),
                  width: 100,
                  height: 100,
                )),
            Center(
              child: ClipOval(
                child: Image.asset(
                  'images/x.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: ClipOval(
                child: Image.file(
                  File(
                      '/storage/emulated/0/Android/data/c.s.sflutter/files/a.jpg'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: ClipOval(
                child: Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564720497900&di=e563c915685bceb398e4692b4ebab4e0&imgtype=jpg&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D551180330%2C2986440005%26fm%3D214%26gp%3D0.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_toOnTap() {
  print('ListTitle  =  _toOnTap');
}

_toLongPress() {
  print('ListTitle  =  _toLongPress');
}
