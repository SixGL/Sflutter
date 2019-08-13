import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Page"),
        ),
        body: Center(
//        child: Image.asset(
//            'images/x.jpg',
//            width: 100,
//            height: 100,
//            fit: BoxFit.cover,
//          ),

//          child: Image.network(
//            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564635947708&di=ba0fc66e7c59a77d6b6bc60d894efcb8&imgtype=0&src=http%3A%2F%2Fwx1.sinaimg.cn%2Forj360%2F50b9e4adly1fp34v3baonj20qo0zvjz0.jpg',
//            width: 100,
//            height: 100,
//            fit: BoxFit.cover,
//          ),

//          child: Image.file(File(
//                '/storage/emulated/0/Android/data/c.s.sflutter/files/a.jpg'),
//              width: 100,
//              height: 100,
//              fit: BoxFit.cover,),



           //圆形图片
//          child: ClipOval(
//
//            child: Image.network(
//              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564635947708&di=ba0fc66e7c59a77d6b6bc60d894efcb8&imgtype=0&src=http%3A%2F%2Fwx1.sinaimg.cn%2Forj360%2F50b9e4adly1fp34v3baonj20qo0zvjz0.jpg',
//              width: 100,
//              height: 100,
//              fit: BoxFit.cover,
//            ),
//          ),

//          child: ClipOval(
//            child: Image.file(File(
//                '/storage/emulated/0/Android/data/c.s.sflutter/files/a.jpg'),
//              width: 100,
//              height: 100,
//              fit: BoxFit.cover,),
//          ),
////

          //通过Container 设置圆形图片
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 2),
                boxShadow: [
                  //阴影位置由offset决定,阴影模糊层度由blurRadius大小决定（大就更透明更扩散），阴影模糊大小由spreadRadius决定
                  BoxShadow(
                      color: Color(0x00EEee00f0),
//                      offset: Offset(2,2),
                      blurRadius: 10,
                      spreadRadius: 2),
                ],
                borderRadius: BorderRadius.all(Radius.circular(150)),
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564635947708&di=ba0fc66e7c59a77d6b6bc60d894efcb8&imgtype=0&src=http%3A%2F%2Fwx1.sinaimg.cn%2Forj360%2F50b9e4adly1fp34v3baonj20qo0zvjz0.jpg'),
                    fit: BoxFit.cover)),
            width: 200,
            height: 200,
          ),
//
//          child: Container(
//            decoration: BoxDecoration(
//                borderRadius: BorderRadius.all(Radius.circular(150)),
//                color: Colors.blue,
//                image: DecorationImage(
//                    image: AssetImage('images/s.jpg'), fit: BoxFit.cover)),
//            width: 200,
//            height: 200,
//          ),


//          child: Container(
////            decoration: BoxDecoration(
////                borderRadius: BorderRadius.all(Radius.circular(150)),
////                color: Colors.blue,
////                image: DecorationImage(
////                    image: FileImage(File('/storage/emulated/0/Android/data/c.s.sflutter/files/a.jpg')), fit: BoxFit.cover)),
////            width: 200,
////            height: 200,
////          ),
        ),
      ),
    );
  }
}
//
//Future<String> get _localPath async {
//  final directory = await getExternalStorageDirectory();
//  return directory.path;
//}
//
//Future<String> get _localFile async {
//  final path = await _localPath;
//  print("_localFile  $path");
//  final directory = File('$path/a.jpg').path;
//  print("directory  $directory");
//  return directory;
//}
