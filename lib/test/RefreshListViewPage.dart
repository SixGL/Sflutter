import 'package:flutter/material.dart';

class RefreshListViewPage extends State {
  List<String> list = new List();

  RefreshListViewPage() : super() {
    for (var i = 0; i < 30; i++) {
      list.add("ListItem = $i");
      print("$i");
    }
  }

  ScrollController _toSontroller = ScrollController();
//状态被初始化完成
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _toSontroller.addListener(() {
      if (_toSontroller.position.pixels ==
          _toSontroller.position.maxScrollExtent) {
        print("列表到底啦");
        _onLoadMore();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _toSontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("ListView"),
        ),
        body: RefreshIndicator(
          onRefresh: _onRefresh,
          child: ListView.builder(
            itemCount: list.length + 1,
            itemBuilder: _loadWidget,
            controller: _toSontroller,
          ),
        ),
      ),
    );
  }

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        List<String> refreshList = new List();
        for (var i = 0; i < 4; i++) {
          refreshList.add("下拉刷新 = $i");
        }
        refreshList.addAll(list);
        list.clear();
        list.addAll(refreshList);
      });
      
    });
  }

  /**
   *上拉加载
   * */
  Future<Null> _onLoadMore() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        List<String> refreshList = new List();
        for (var i = 0; i < 6; i++) {
          refreshList.add("上拉加载 = $i");
        }
        list.addAll(refreshList);
      });
    });
  }

  /**
   * 区分上拉时返回的Widget
   * */
  Widget _loadWidget(BuildContext ctx, int i) {
    if (i < list.length) {
      // 返回正常Item的Widget
      return ListTile(
        title: Text("${list[i]}"),
        leading: Icon(Icons.library_music),
        subtitle: Text("副标题 ${list[i]}"),
      );
    } else {
      // 返回上拉加载布局的Widget
      return Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.red,
          width: double.infinity,
          height: 80,
          child: Text("正在加载更多..."),
        ),
      );
    }
  }
}
