import 'package:flutter/material.dart';
import 'faqanswer.dart';

class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("FAQ"),
      ),
      body: FaqBody(),
    );
  }
}

class FaqBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView(
        children: <Widget>[
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new FaqAnswer()),
              );
            },
            child: new ListTile(
              leading: new Icon(Icons.question_answer),
              title: new Text("question 1"),
              
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new FaqAnswer()),
              );
            },
            child: new ListTile(
              leading: new Icon(Icons.question_answer),
              title: new Text("question 2"),
              
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new FaqAnswer()),
              );
            },
            child: new ListTile(
              leading: new Icon(Icons.question_answer),
              title: new Text("question 3"),
              
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new FaqAnswer()),
              );
            },
            child: new ListTile(
              leading: new Icon(Icons.question_answer),
              title: new Text("question 4"),
              
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new FaqAnswer()),
              );
            },
            child: new ListTile(
              leading: new Icon(Icons.question_answer),
              title: new Text("question 5"),
              
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new FaqAnswer()),
              );
            },
            child: new ListTile(
              leading: new Icon(Icons.question_answer),
              title: new Text("question 6"),
              
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new FaqAnswer()),
              );
            },
            child: new ListTile(
              leading: new Icon(Icons.question_answer),
              title: new Text("question 7"),
              
            ),
          ),

        ],
      ),
    );
  }
}
