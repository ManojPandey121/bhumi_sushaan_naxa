import 'package:flutter/material.dart';

class ImportantLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Important Links"),
      ),
      body: new LinksBody(),
      
    );
  }
}

class LinksBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Text("Important links here..", style: new TextStyle(fontSize: 28.0),),
      ),
      
    );
  }
}