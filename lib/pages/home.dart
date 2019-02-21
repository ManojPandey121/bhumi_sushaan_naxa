import 'dart:convert';
import 'package:hamrobhumi/pages/news/home_news.dart';
import 'package:hamrobhumi/pages/news/news_list.dart';

import 'news/news.dart';
import 'package:flutter/material.dart';
import 'map/map.dart';
import 'faq/faq.dart';
import 'mainservices/mainservices.dart';
import 'news/newsdetails.dart';

class HomePage extends StatelessWidget {
  // List data;

  @override
  Widget build (BuildContext context) {
    return new Column(
      children: <Widget>[
        //new AnimatedTxt(),

        new HomeNews(),

        new FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('static/json/menu_item.json'),
          builder: (context, snapshot) {
            var menuitems = json.decode(snapshot.data.toString());

            return new Expanded(
              flex: 10,
              child: new GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
                children: new List<Widget>.generate(menuitems.length, (index) {
                  return new GridTile(
                    child: new InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(menuitems[index]["route"]);
                      },
                      child: new Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: new Card(
                            color: Colors.white,
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Image.asset(menuitems[index]["icon"]),
                                new Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Text(
                                    menuitems[index]['name'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.blue.shade900,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  );
                }),
              ),
            );
          },
        ),
        new BottomAppBar(
          child: new Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new NewsPage()));
                    },
                    child: new Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: new Column(
                        children: <Widget>[
                          new Image.asset(
                              'static/icons/information_section_new.png'),
                          new Text(
                            "Information",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(color: Colors.blue.shade900),
                          ) //समाचार
                        ],
                      ),
                    ),
                  ),
                ),
                new Expanded(
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new MainServices()));
                    },
                    child: new Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: new Column(
                        children: <Widget>[
                          new Image.asset('static/icons/main_services_new.png'),

                          new Text(
                            "Services",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.blue.shade900),
                          ),
                          //कार्यालय नक्सा
                        ],
                      ),
                    ),
                  ),
                ),
                new Expanded(
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new MapPage()));
                    },
                    child: new Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: new Column(
                        children: <Widget>[
                          new Image.asset(
                              'static/icons/office_details_new.png'),
                          new Text(
                            "Office details",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(color: Colors.blue.shade900),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                new Expanded(
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Faq()));
                    },
                    child: new Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: new Column(
                        children: <Widget>[
                          new Image.asset('static/icons/faq_new.png'),
                          new Text(
                            "FAQ", textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.blue.shade900),
                            //सोधिने प्रश्नहरु
                            softWrap: true,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AnimatedTxt extends StatefulWidget {
  @override
  _AnimatedTxtState createState () => _AnimatedTxtState();
}

class _AnimatedTxtState extends State<AnimatedTxt>
    with TickerProviderStateMixin {


  @override
  Widget build (BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: 40,
          padding: EdgeInsets.only(top: 5, right: 5, left: 5),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text(
                  "News",
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new InkWell(
                child: new Text("\ Read All ",
                    textAlign: TextAlign.right,
                    style: new TextStyle(
                      fontSize: 16,
                      //  fontWeight: FontWeight.w400,
                      color: Colors.blue.shade800,
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new NewsInListPage()));
                },
              ),
              new InkWell(
                child: new Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue.shade800,
                  size: 17,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new NewsInListPage()));
                },
              ),
            ],
          ),
        ),
        new Container(
            padding: EdgeInsets.only(top: 1),
            height: 225,
            //MediaQuery.of(context).size.width /2,
            width: MediaQuery
                .of(context)
                .size
                .width,
            color: Colors.white10,
            // newly added horizintal Listview
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new NewsDetails()));
                  },
                  child: new Container(
                    width: 200,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height,
                    child: new Column(
                      children: <Widget>[
                        new Expanded(
                          child: new Image.asset(
                            'static/images/logo.png',
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
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
                            new Padding(padding: EdgeInsets.only(bottom: 10)),
                          ],
                        )
                      ],
                    ),
                    color: Colors.white,
                  ),
                ),
                new Padding(
                  padding:
                  const EdgeInsets.only(right: 20, bottom: 1.0, left: 1.0),
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
                                  builder: (context) => new NewsDetails()));
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
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new NewsDetails()));
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
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new NewsDetails()));
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
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new NewsDetails()));
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
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new NewsDetails()));
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
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new NewsDetails()));
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
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new NewsDetails()));
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
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new NewsDetails()));
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
              ],
            )),
        new Container(
          //color: Colors.blue.shade800,
          height: 40,
//newly added container -2s
          padding: EdgeInsets.only(top: 5, right: 5, left: 5),

          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text(
                  "Browse Sections",
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Container(
                color: Colors.blue.shade800,
                padding:
                EdgeInsets.only(left: 15, bottom: 20, top: 10, right: 5),
                alignment: Alignment.center,
                child: new InkWell(
                  child: new Text(" Citizens Report ",
                      textAlign: TextAlign.right,
                      style: new TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new NewsPage()));
                  },
                ),
              ),
              new Container(
                color: Colors.blue.shade800,
                padding: EdgeInsets.only(bottom: 12, top: 12, right: 15),
                alignment: Alignment.center,
                child: new InkWell(
                  child: new Icon(
                    Icons.arrow_forward_ios,
                    size: 17,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new NewsPage()));
                  },
                ),
              ),
            ],
          ),
        ),
        new Padding(padding: EdgeInsets.only(bottom: 2)),
      ],
    );
  }
}
