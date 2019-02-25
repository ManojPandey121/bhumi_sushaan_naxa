import 'package:flutter/material.dart';
import 'newsdetails.dart';
import 'dart:convert';

class NewsInListPage extends StatelessWidget {
  bool pressAttention = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Detail News In List"),
        ),
        body: new ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(10),
              child: new TextField(
                controller: null,
                decoration: new InputDecoration(
                  fillColor: Color.fromRGBO(237, 240, 255, 1),
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  hintText: "Search news ...",
                  border: InputBorder.none,
                ),
                onChanged: null,
              ),
            ),
            new Container(
              height: 45,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  new Padding(padding: EdgeInsets.only(left: 10)),
                  new RaisedButton(
                    child: new Text(
                      "All",
                      style: TextStyle(fontSize: 14),
                    ),
                    textColor: Colors.white,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Color.fromRGBO(98, 2, 238, 1),
                    onPressed: () => null,
                  ),
                  new Padding(padding: EdgeInsets.all(8)),
                  new RaisedButton(
                    child: new Text(
                      "Dolma",
                      style: TextStyle(fontSize: 14),
                    ),
                    textColor: Colors.green,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        side: BorderSide(
                          color: Colors.green,
                        )),
                    color: Colors.white,
                    onPressed: () => null,
                  ),
                  new Padding(padding: EdgeInsets.all(8)),
                  new RaisedButton(
                    child: new Text(
                      "Survey",
                      style: TextStyle(fontSize: 14),
                    ),
                    textColor: Colors.blueAccent,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        side: BorderSide(
                          color: Colors.blueAccent,
                        )),
                    color: Colors.white,
                    onPressed: () => null,
                  ),
                  new Padding(padding: EdgeInsets.all(8)),
                  new RaisedButton(
                    child: new Text(
                      "LMTC",
                      style: TextStyle(fontSize: 14),
                    ),
                    textColor: Colors.purpleAccent,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        side: BorderSide(
                          color: Colors.purpleAccent,
                        )),
                    color: Colors.white,
                    onPressed: () => null,
                  ),
                  new Padding(padding: EdgeInsets.all(8)),
                  new RaisedButton(
                    child: new Text(
                      "Ministry",
                      style: TextStyle(fontSize: 14),
                    ),
                    textColor: Colors.orange,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        side: BorderSide(
                          color: Colors.orange,
                        )),
                    color: Colors.white,
                    onPressed: () => null,
                  ),
                ],
              ),
            ),
            new Container(
              width: (MediaQuery.of(context).size.width),
              height: 500,
              child: new FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString('static/json/news/news.json'),
                  builder: (context, snapshot) {
                    var listitem = json.decode(snapshot.data.toString());
                    return new ListView.builder(
                      itemCount: listitem.length,
                      itemBuilder: (BuildContext covariant, int index) {
                        return new Container(
                          padding: EdgeInsets.all(5),
                          child: new ListTile(
                              contentPadding:
                                  EdgeInsets.only(left: 0, bottom: 5),
                              title: new Text(
                                listitem[index]["title"],
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              leading: new Image.asset(
                                listitem[index]["image"],
                                width: 90,
                                height: 100,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => null));
                              },
                              trailing: new Column(
                                children: <Widget>[
                                  //   new Padding(padding: EdgeInsets.only(top: 20)),
                                  new RaisedButton(
                                    child: new Text(
                                      listitem[index]["tag"],
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    textColor: Colors.white,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.padded,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0)),
                                    color: Color.fromRGBO(26, 188, 156, 1),
                                    onPressed: () => null,
                                  ),
                                ],
                              ),
                              subtitle: new Row(
                                children: <Widget>[
                                  new Icon(
                                    Icons.calendar_today,
                                    size: 10,
                                  ),
                                  new Text(
                                    listitem[index]["date"] + ", ",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  new Padding(
                                      padding: EdgeInsets.only(top: 25)),
                                  new Text(
                                    listitem[index]["time"],
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              )

                              //  trailing: new Text("Ministry of Land Management, Cooperatives and Poverty Alliance."),

                              ),
                        );
                      },
                      padding: EdgeInsets.only(bottom: 20),
                    );
                  }),
            ),
          ],

          /*ListView(
        children: <Widget>[
        
          new Container(
            height: 45,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Padding(padding: EdgeInsets.only(left: 10)),
                new RaisedButton(
                  child: new Text(
                    "All",
                    style: TextStyle(fontSize: 14),
                  ),
                  textColor: Colors.white,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Color.fromRGBO(98, 2, 238, 1),
                  onPressed: () => null,
                ),
                new Padding(padding: EdgeInsets.all(8)),
                new RaisedButton(
                  child: new Text(
                    "Dolma",
                    style: TextStyle(fontSize: 14),
                  ),
                  textColor: Colors.green,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(
                        color: Colors.green,
                      )),
                  color: Colors.white,
                  onPressed: () => null,
                ),
                new Padding(padding: EdgeInsets.all(8)),
                new RaisedButton(
                  child: new Text(
                    "Survey",
                    style: TextStyle(fontSize: 14),
                  ),
                  textColor: Colors.blueAccent,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(
                        color: Colors.blueAccent,
                      )),
                  color: Colors.white,
                  onPressed: () => null,
                ),
                new Padding(padding: EdgeInsets.all(8)),
                new RaisedButton(
                  child: new Text(
                    "LMTC",
                    style: TextStyle(fontSize: 14),
                  ),
                  textColor: Colors.purpleAccent,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(
                        color: Colors.purpleAccent,
                      )),
                  color: Colors.white,
                  onPressed: () => null,
                ),
                new Padding(padding: EdgeInsets.all(8)),
                new RaisedButton(
                  child: new Text(
                    "Ministry",
                    style: TextStyle(fontSize: 14),
                  ),
                  textColor: Colors.orange,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(
                        color: Colors.orange,
                      )),
                  color: Colors.white,
                  onPressed: () => null,
                ),
              ],
            ),
          ),
          new Padding(padding: EdgeInsets.all(10)),
          new DownloadTab2(),

         */
        ));
  }
}



/*
,
{
"icon":"static/icons/mainservices.png",
"name":"मुख्य सेवाहरु",
"route":"/mainservices"
},
{
"icon":"static/icons/calculator.png",
"name":"नापी क्याल्कुलेटर",
"route":"/calculator"
},
{
"icon":"static/icons/dictionary.png",
"name":"नापी शब्दकोश",
"route":"/dictionary"
},
{
"icon":"static/icons/download.png",
"name":"डाउनलोड",
"route":"/download"
},
{
"icon":"static/icons/citizencharter.png",
"name":"नागरिक वडापत्र",
"route":"/citizencharter"
},
{
"icon":"static/icons/sampleform.png",
"name":"निवेदनका को ढाचा",
"route":"/sampleform"
},
{
"icon":"static/icons/priorityprojects.png",
"name":"मुख्य परियोजना",
"route":"/priorityprojetcs"
},
{
"icon":"static/icons/feedback.png",
"name":"मेरो गुनासो /सल्लाह",
"route":"/feedback"
},
{
"icon":"static/icons/video.png",
"name":"सुचनामूलक भिडियोहरु",
"route":"/videos"
}*/
