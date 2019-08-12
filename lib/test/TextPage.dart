import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
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
            child: Text(
              "Flutter Text属性介绍Flutter Text属性介绍Flutter",
              maxLines: 1,
//              textScaleFactor:3,
//              textAlign:TextAlign.right,
//              textDirection: TextDirection.ltr,
              overflow: TextOverflow.ellipsis,// text文字超出屏幕，省略号代替
              style: TextStyle(
                wordSpacing: 20, // 单词间隙(如果是负值，会让单词变得更紧 凑
                letterSpacing:3,//字母间隙(如果是负值，会让字母变得更紧 凑)
                decoration:TextDecoration.underline,//下划线
                decorationColor: Colors.black,// 下划线颜色
                decorationStyle: TextDecorationStyle.wavy,// 波浪线
                color: Colors.red,
                fontSize: 20,
                fontStyle: FontStyle.italic, // 斜体
                fontWeight: FontWeight.bold, // 加粗
              ),

            ),
          )),
    );
  }
}
