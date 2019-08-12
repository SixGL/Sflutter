import 'package:flutter/material.dart';

class AspectRatioCardPage extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AspectRatio、Card"),
        ),
        body: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.7),
          itemBuilder: _getWidget,
        ),
      ),
    );
  }

  Widget _getWidget(BuildContext context, int index) {
    return Card(
      margin: EdgeInsets.all(10),//外边距
      shape: RoundedRectangleBorder(//设置圆角
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 2,// 阴影大小
      child: Stack(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 7 / 8, // 设置宽高比
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: Text(
                  "美女Flutter",
                  style: TextStyle(fontSize: 16),
                ),
                subtitle: Text(
                  "Flutter副标题",
                  style: TextStyle(fontSize: 12),
                ),
                leading: CircleAvatar(// 专门处理头像的圆角widget
                  backgroundImage: AssetImage("images/z.jpg"),
                ),
              )),
        ],
      ),
    );
  }
}
