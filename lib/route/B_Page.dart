import 'package:cs_flutter/tab/BottomNvTabViewPage.dart';
import 'package:flutter/material.dart';

class B_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MeContent();
  }
}

class MeContent extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("B_Page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {

            Navigator.pushNamed(context, '/routeC_Page');
          },
          child: Text("B_Page"),
        ),
      ),
    );
  }
}
