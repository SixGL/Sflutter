import 'package:flutter/material.dart';

import 'RouteNamedPage.dart';
import 'package:cs_flutter/tab/BottomNvTabViewPage.dart';
import 'B_Page.dart';
import 'C_Page.dart';
import 'package:cs_flutter/drawer/DrawerItemPage.dart';

final Map<String, Function> routes = {
  '/': (contxt, {arguments}) => TabBootomNvPage(index: arguments),
  "/routeNamedPage": (context, {arguments}) => RouteNamedPage(content: arguments),
  "/routeB_Page": (context) => B_Page(),
  "/routeC_Page": (context) => C_Page(),
  "/routeDrawerItemPage": (context) => DrawerItemPage()
};

var onGenerateRoute = (RouteSettings settings) {
// 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
