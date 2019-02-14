import 'package:flutter/material.dart';

class NoticeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Card(
                      child: new Row(
              children: <Widget>[
                new Image.asset(
                  'static/images/placeholder.png',
                  width: 100.0,
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "News Title",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 28.0,
                      ),
                    ),
                    new Text(
                      "Short description ....",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    new Text(
                      "Date:4-5-18, By: Author",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          new Card(
                      child: new Row(
              children: <Widget>[
                new Image.asset(
                  'static/images/placeholder.png',
                  width: 100.0,
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "News Title",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 28.0,
                      ),
                    ),
                    new Text(
                      "Short description ....",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    new Text(
                      "Date:4-5-18, By: Author",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          new Card(
                      child: new Row(
              children: <Widget>[
                new Image.asset(
                  'static/images/placeholder.png',
                  width: 100.0,
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "News Title",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 28.0,
                      ),
                    ),
                    new Text(
                      "Short description ....",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    new Text(
                      "Date:4-5-18, By: Author",
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
