import 'package:flutter/material.dart';
import 'newsdetails.dart';

class NewsInListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Detail News In List"),
      ),
      body: new Container(
          child: ListView(
        // This next line does the trick.

        children: <Widget>[
          new Card(
            child: new TextField(
              controller: null,
              decoration: new InputDecoration(
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                filled: true,
                hintText: "Search news ...",
                border: InputBorder.none,
              ),
              onChanged: null,
            ),
          ),

new Card(
  child: new ListView(),
),

          new Card(

            child: new Row(
              children: <Widget>[
                new Container(
                  child: new RaisedButton(
                    child: const Text('All' ,style: TextStyle(color: Colors.white),),
                    color: Colors.deepPurpleAccent,



                    onPressed: () {
                      // Perform some action
                    },
                  ),
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
          new InkWell(
            onTap: () {
              Navigator.push(
                  context, new MaterialPageRoute(builder: (context) => null));
            },
            child: new Container(
              width: 200,
              height: MediaQuery.of(context).size.height,
              child: new Column(
                children: <Widget>[
                  new Expanded(
                    child: new Image.asset(
                      'static/images/logo.png',
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      alignment: Alignment.center,
                    ),
                  ),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "Ministry of Land Management, Cooperatives and Poverty Alliance.",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.calendar_today,
                                size: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.all(2),
                              ),
                              new Text(
                                "16 Jan 2018 ",
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                              new Expanded(
                                child: new Text(
                                  "Survey Department",
                                  textAlign: TextAlign.right,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ),
                            ],
                          )),
                      new Padding(padding: EdgeInsets.all(5)),
                      new Text(
                        "Thank You for purchasing! you  arrived prepared to negotiate about naxa and its development  arrived prepared to negotiate about naxa and its development"
                            " arrived prepared to negotiate about naxa and its development.",
                        softWrap: true,
                        maxLines: 2,
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
          new Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 1.0, left: 1.0),
          ),
          Container(
            width: 200.0,
            height: 200,
            child: new Column(
              children: <Widget>[
                new InkWell(
                  onTap: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => null));
                  },
                  child: new Image.asset(
                    'static/images/placeholder.png',
                    width: 200,
                    height: 95, //(MediaQuery.of(context).size.height) /2,
                    alignment: Alignment.topCenter,
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                ),
                new InkWell(
                  onTap: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => null));
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
            padding: const EdgeInsets.only(right: 20),
          ),
          Container(
            width: 200.0,
            height: 200,
            child: new Column(
              children: <Widget>[
                new InkWell(
                  onTap: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => null));
                  },
                  child: new Image.asset(
                    'static/images/placeholder.png',
                    width: 200,
                    height: 95, //(MediaQuery.of(context).size.height) /2,
                    alignment: Alignment.topCenter,
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                ),
                new InkWell(
                  onTap: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => null));
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
            padding: const EdgeInsets.only(right: 20),
          ),
          Container(
            width: 200.0,
            height: 200,
            child: new Column(
              children: <Widget>[
                new InkWell(
                  onTap: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => null));
                  },
                  child: new Image.asset(
                    'static/images/placeholder.png',
                    width: 200,
                    height: 95, //(MediaQuery.of(context).size.height) /2,
                    alignment: Alignment.topCenter,
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                ),
                new InkWell(
                  onTap: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => null));
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
            padding: const EdgeInsets.only(right: 20),
          ),
          Container(
            width: 200.0,
            height: 200,
            child: new Column(
              children: <Widget>[
                new InkWell(
                  onTap: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => null));
                  },
                  child: new Image.asset(
                    'static/images/placeholder.png',
                    width: 200,
                    height: 95, //(MediaQuery.of(context).size.height) /2,
                    alignment: Alignment.topCenter,
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                ),
                new InkWell(
                  onTap: () {
                    Navigator.push(context,
                        new MaterialPageRoute(builder: (context) => null));
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

          /*   Container(
                      width: 160.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.orange,
                    ),*/
        ],
      )),
    );
  }
}
