import 'package:flutter/material.dart';

class FaqAnswer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("FAQ"),
      ),
      body: new FaqAnswerBody(),
      
    );
  }
}

class FaqAnswerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Text("Detail Answer of the given question", style: new TextStyle(fontSize: 28.0),),
      ),
      
    );
  }
}