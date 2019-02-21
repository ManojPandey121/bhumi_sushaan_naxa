import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hamrobhumi/pages/news/news.dart';
import 'package:hamrobhumi/pages/news/news_list.dart';
import 'package:hamrobhumi/pages/news/newsdetails.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: (MediaQuery.of(context).size.height),
      child: new FutureBuilder(
          future: DefaultAssetBundle
              .of(context)
              .loadString('static/json/news/news.json'),
          builder: (context, snapshot) {
            var listitem = json.decode(snapshot.data.toString());

            return new ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext covariant, int index) {
                return new Container(
                    child: new Column(
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
                                          builder: (
                                              context) =>new NewsInListPage()));
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
                                          builder: (
                                              context) => new NewsInListPage()));
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
                                            builder: (
                                                context) => new NewsDetails()));
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
                                            listitem[index]["image"],
                                            width: MediaQuery
                                                .of(context)
                                                .size
                                                .width,
                                            height: 100,
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        new Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .center,
                                          children: <Widget>[
                                            new Text(
                                              listitem[index]["title"],
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
                                                      listitem[index]["date"],
                                                      softWrap: true,
                                                      overflow: TextOverflow
                                                          .ellipsis,
                                                      style: TextStyle(
                                                        fontSize: 10.0,
                                                      ),
                                                    ),
                                                    new Expanded(
                                                      child: new Text(
                                                        listitem[index]["department"],
                                                        textAlign: TextAlign.right,
                                                        softWrap: true,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                          fontSize: 10.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                            new Padding(padding: EdgeInsets.all(5)),
                                            new Text(
                                              listitem[index]["description"],
                                              softWrap: true,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 12.0,
                                              ),
                                            ),
                                            new Padding(padding: EdgeInsets.only(
                                                bottom: 10)),
                                          ],
                                        )
                                      ],
                                    ),
                                    color: Colors.white,
                                  ),
                                ),


                                new Padding(
                                  padding:
                                  const EdgeInsets.only(
                                      right: 20, bottom: 1.0, left: 1.0),
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
                                                  builder: (
                                                      context) =>new NewsDetails()));
                                        },

                                        child: new Image.asset(


                                          listitem[index+1]["image"],
                                          width: 200,
                                          height: 95,
                                          //(MediaQuery.of(context).size.height) /2,
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
                                                  builder: (
                                                      context) => new NewsDetails()));
                                        },
                                        child: new Image.asset(
                                          listitem[index+2]["image"],
                                          width: 200,
                                          height: 95,
                                          //(MediaQuery.of(context).size.height) /2,
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
                                                  builder: (
                                                      context) =>new NewsDetails()));
                                        },

                                        child: new Image.asset(


                                          listitem[index+3]["image"],
                                          width: 200,
                                          height: 95,
                                          //(MediaQuery.of(context).size.height) /2,
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
                                                  builder: (
                                                      context) => new NewsDetails()));
                                        },
                                        child: new Image.asset(
                                          listitem[index+4]["image"],
                                          width: 200,
                                          height: 95,
                                          //(MediaQuery.of(context).size.height) /2,
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
                                                  builder: (
                                                      context) =>new NewsDetails()));
                                        },

                                        child: new Image.asset(


                                          listitem[index+1]["image"],
                                          width: 200,
                                          height: 95,
                                          //(MediaQuery.of(context).size.height) /2,
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
                                                  builder: (
                                                      context) => new NewsDetails()));
                                        },
                                        child: new Image.asset(
                                          listitem[index+2]["image"],
                                          width: 200,
                                          height: 95,
                                          //(MediaQuery.of(context).size.height) /2,
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
                                EdgeInsets.only(
                                    left: 15, bottom: 20, top: 10, right: 5),
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
                                            builder: (context) => new NewsInListPage()));
                                  },
                                ),
                              ),
                              new Container(
                                color: Colors.blue.shade800,
                                padding: EdgeInsets.only(
                                    bottom: 12, top: 12, right: 15),
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
                                            builder: (context) => new NewsInListPage()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(bottom: 2)),
                      ],
                    )
                );


              },
            );
          }),
    );
  }
}
