import 'package:flutter/material.dart';

class AboutDeveloper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Developed By"),
      ),
      body: new DeveliperBody(),
      
    );
  }
}

class DeveliperBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Text("Developers Details here..", style: new TextStyle(fontSize: 28.0),),
      ),
      
    );
  }
}