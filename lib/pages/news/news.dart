import 'package:flutter/material.dart';
import 'noticetab.dart';
import 'newstab.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(initialIndex: 0, vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("New And Notices"),
          bottom: new TabBar(
              indicatorColor: Colors.purple,
              // labelColor: Colors.white,
              controller: controller,
              tabs: <Tab>[
                new Tab(text: "News"),
                new Tab(text: "Notices"),
              ]),
        ),
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new NewsTab(),
            new NoticeTab(),
          ],
        ));
  }
}
