import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter'),
          ),
          body: Center(
              child: Container(
                transform: Matrix4.rotationX(0.2),//绕X轴旋转

//            margin: EdgeInsets.all(20), // 外部有其他组件方便观察 ，跟xml布局中的margin一个意思
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.center,// 对齐方式

                decoration: BoxDecoration(
                  // 盒子装饰
                    boxShadow: [
                      //阴影位置由offset决定,阴影模糊层度由blurRadius大小决定（大就更透明更扩散），阴影模糊大小由spreadRadius决定
                      BoxShadow(
                          color: Color(0x00EEee00f0),
//                      offset: Offset(2,2),
                          blurRadius: 10,
                          spreadRadius: 2),
                    ],
//                  环形渲染
//                    gradient: RadialGradient(colors: [Color(0xFFFFFF00), Color(0xFF00FF00), Color(0xFF00FFFF)],radius: 1, tileMode: TileMode.mirror),
                    //扫描式渐变
//                    gradient: SweepGradient(colors: [Color(0xFFFFFF00), Color(0xFF00FF00), Color(0xFF00FFFF)], startAngle: 0.0, endAngle: 1*3.14),
                   // 线性渐变
                    gradient: LinearGradient(colors: [Color(0xFFFFFF00), Color(0xFF00FF00), Color(0xFF00FFFF)], begin: FractionalOffset(1, 1), end: FractionalOffset(0, 1)),


                    color: Colors.cyan,
                    border: Border.all(
                      //  边框线
                        color: Colors.black,
                        width: 4 // 设置边框线的宽度
                    ),
//                borderRadius:BorderRadius.all(Radius.circular(50))//圆角 4个角
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30)) // 指定某个角设置圆角
                ),
                child: Text(
                  "Container容器中的文字",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontStyle: FontStyle.italic, // 斜体
                    fontWeight: FontWeight.bold, // 加粗
                  ),
                ),
                width: 300,
                height: 300,
              )),
        ));
  }

}
