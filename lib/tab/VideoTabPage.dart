import 'package:flutter/material.dart';


class VideoTabPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MeContent();
  }
}

class MeContent extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
    );
  }

}