import 'package:flutter/material.dart';
import 'news/news.dart';

class Scroll_News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Scroll_News(),

          new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new NewsPage()));
            },
            child: new Container(
              width: 200.0,
              height: 200,
              child: new Column(
                children: <Widget>[
                  new Image.asset(
                    'static/images/placeholder.png',
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    alignment: Alignment.center,
                  ),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "News Title",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                      ),
                      new Text(
                        "Short description .....",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      new Text(
                        "Date:4-5-18, By: Author",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              color: Colors.white,
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new NewsPage()));
            },
            child: new Container(
              width: 200.0,
              height: 200,
              child: new Column(
                children: <Widget>[
                  new Image.asset(
                    'static/images/placeholder.png',
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    alignment: Alignment.center,
                  ),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "News Title",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                      ),
                      new Text(
                        "Short description .....",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      new Text(
                        "Date:4-5-18, By: Author",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              color: Colors.white,
            ),
          ),
          Container(
            width: 200.0,
            height: 200,
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  'static/images/placeholder.png',
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  alignment: Alignment.center,
                ),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "News Title",
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 28.0,
                      ),
                    ),
                    new Text(
                      "Short description .....",
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    new Text(
                      "Date:4-5-18, By: Author",
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
            color: Colors.white,
          ),
          new Padding(
            padding:
            const EdgeInsets.only(right: 5.0, bottom: 2.0, left: 1.0),
          ),
          Container(
            width: 200.0,
            height: 200,
            child: new Column(
              children: <Widget>[
                new InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new NewsPage()));
                  },
                  child: new Image.asset(
                    'static/images/placeholder.png',
                    width: 200,
                    height: 95, //(MediaQuery.of(context).size.height) /2,
                    alignment: Alignment.topCenter,
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                ),
                new InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new NewsPage()));
                  },
                  child: new Image.asset(
                    'static/images/placeholder.png',
                    width: 200,
                    height: 95, //(MediaQuery.of(context).size.height) /2,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ],
            ),
            color: Colors.white,
          ),
          new Padding(
            padding: const EdgeInsets.only(right: 5.0),
          ),
          Container(
            width: 200.0,
            height: 200,
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  'static/images/placeholder.png',
                  width: 200,
                  height: 95, //(MediaQuery.of(context).size.height) /2,

                  alignment: Alignment.topCenter,
                ),
                new Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                ),
                new Image.asset(
                  'static/images/placeholder.png',
                  width: MediaQuery.of(context).size.width,
                  height: 95, // (MediaQuery.of(context).size.height) /2,
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
            color: Colors.white,
          ),
          new Padding(
            padding: const EdgeInsets.only(right: 5.0),
          ),
          Container(
            width: 200.0,
            height: 200,
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  'static/images/placeholder.png',
                  width: 200,
                  height: 95, //(MediaQuery.of(context).size.height) /2,

                  alignment: Alignment.topCenter,
                ),
                new Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5.0,
                  ),
                ),
                new Image.asset(
                  'static/images/placeholder.png',
                  width: MediaQuery.of(context).size.width,
                  height: 95, // (MediaQuery.of(context).size.height) /2,

                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
            color: Colors.white,
          ),
          new Padding(
            padding: const EdgeInsets.only(right: 5.0),
          ),
          Container(
            width: 200.0,
            height: 200,
            child: new Column(
              children: <Widget>[
                new Image.asset(
                  'static/images/placeholder.png',
                  width: 200,
                  height: 95, //(MediaQuery.of(context).size.height) /2,

                  alignment: Alignment.topCenter,
                ),
                new Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                ),
                new Image.asset(
                  'static/images/placeholder.png',
                  width: MediaQuery.of(context).size.width,
                  height: 95, // (MediaQuery.of(context).size.height) /2,

                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
            color: Colors.white,
          ),

          /*   Container(
                      width: 160.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.orange,
                    ),*/
        ],
      ),
    );
  }
}
