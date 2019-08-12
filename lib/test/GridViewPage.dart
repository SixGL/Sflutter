import 'package:flutter/material.dart';

class GridViewPage extends State {
  List<String> list = new List();

  GridViewPage() : super() {
    for (var x = 0; x < 10; x++) {
      list.add("GirdView=$x");
    }
  }

  Widget _getWidget(BuildContext ctx, int i) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "images/s.jpg",
            ),
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 30,
        child: Text(
          "List__${list[i]}",
          style: TextStyle(color: Colors.cyan),
        ),
        decoration: BoxDecoration(
        color: Color(0x66000000),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Girdview"),
        ),
        body: GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: list.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            itemBuilder: _getWidget),
      ),
    );
  }
}
