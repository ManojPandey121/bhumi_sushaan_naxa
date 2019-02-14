import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Contact Us"),
      ),
      body: new ContactBody(),
      
    );
  }
}

class ContactBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Text("Contact Us Details here..", style: new TextStyle(fontSize: 28.0),),
      ),
      
    );
  }
}