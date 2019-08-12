import 'package:flutter/material.dart';

/**
 * 命名路由
 * */
class RouteNamedPage extends StatefulWidget {
  String content;

  RouteNamedPage({this.content}) {
    if (content == null) {
      content = "命名路由默认值";
    }
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RouteNameContentPage(mArguments: content);
  }
}

class RouteNameContentPage extends State {
  String mArguments;

  RouteNameContentPage({this.mArguments}) {
    print(mArguments);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        child: Text("返回"),
      ),
      appBar: AppBar(
        title: Text(mArguments),
      ),
      body: Text(mArguments),
    );
  }
}
