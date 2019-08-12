import 'package:flutter/material.dart';

import 'tab/BottomNvTabViewPage.dart';
import 'test/AspectRatioCardPage.dart';
import 'test/ContainerPage.dart';
import 'test/DongtaiListViewPage.dart';
import 'test/GridViewPage.dart';
import 'test/ImagePage.dart';
import 'test/LayoutWidget.dart';
import 'test/LayoutWidget_2.dart';
import 'test/ListViewPage.dart';
import 'test/RefreshListViewPage.dart';
import 'test/TextPage.dart';
import 'test/Wrap_RaisedButton_Page.dart';
import 'route/RouteNamedPage.dart';
import 'route/Routes.dart';

void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return ContainerPage();
//    return TextPage();
//    return ImagePage();
//    return ListViewPage();
//    return DongtaiListViewPage();
//    return MaterialApp(
//      home: TabBootomNvPage(),
//    );
//  }
//}

//class MyApp extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return RefreshListViewPage();
//    return GridViewPage();
//    return LayoutRow();
//    return Layout2();
//    return AspectRatioCardPage();
//    return Wrap_RaisedButton_Page();
//  }
//}

/**
 * 路由
 * */
class MyApp extends StatelessWidget {
//  final routes = {
////        '/routeNamedPage':(context)=>RouteNamedPage()  // 不传值
//    '/routeNamedPage': (context, {arguments}) =>
//        RouteNamedPage(arguments: arguments) // 可传可不传
//  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
