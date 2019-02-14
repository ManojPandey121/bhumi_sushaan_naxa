import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';
import 'tab4.dart';
import 'package:flutter/material.dart';

class DownloadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DownloadTabs();
  }
}

class DownloadTabs extends StatefulWidget {
  @override
  DownloadTabsState createState() => new DownloadTabsState();
}

class DownloadTabsState extends State<DownloadTabs> with SingleTickerProviderStateMixin {





  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(initialIndex:0,vsync: this, length:4);
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
    
    title: new Text("Downloads"),
    bottom: new TabBar(
      indicatorColor: Colors.amber,
     // labelColor: Colors.white,
          controller: controller,
          tabs: <Tab>[
            new Tab(text: "कानुन"),
            new Tab(text: "ऐन"),
            new Tab(text: "Niyam"),
            new Tab(text: "Publications"),
            
          ]
        ),
        ),
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
             new DownloadTab1(),
            new DownloadTab2(),
            new DownloadTab3(),
            new DownloadTab4(),
            
          ],
        )
        
      );
      
      
  }
}

