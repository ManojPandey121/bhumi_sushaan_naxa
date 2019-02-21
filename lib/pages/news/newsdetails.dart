import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Detail News"),
      ),
      body: new Column(
        children: <Widget>[
          new Padding(padding: EdgeInsets.only(right: 2, left: 2)),
          new Padding(padding: EdgeInsets.all(2)),
          new Text(
            "Ministry of Land Management, Cooperatives and Poverty that can change the view how earth looks",
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.ltr,
            maxLines: 2,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          new Padding(padding: EdgeInsets.all(5)),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.calendar_today,
                size: 12,
              ),
              new Padding(padding: EdgeInsets.only(left: 3)),
              new Text(" 2019-11-1,"),
              new Text(" 10:17 PM")
            ],
          ),
          new Divider(),
          //  new Padding(padding: EdgeInsets.all(10)),
          new Image.asset(
            'static/images/logo.png',
            width: MediaQuery.of(context).size.width,
            height: 150,
          ),
          //    new Padding(padding: EdgeInsets.all(10)),
          new Divider(),
          new Row(
            children: <Widget>[
              new Padding(padding: EdgeInsets.all(2)),
              new Text(
                "Share on : ",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              new Padding(padding: EdgeInsets.all(5)),
              new InkWell(
                onTap: null,
                child: new Image.asset(
                  'static/icons/facebook.png',
                ),
              ),
              new Padding(padding: EdgeInsets.all(10)),
              new InkWell(
                onTap: null,
                child: new Image.asset(
                  'static/icons/twitter.png',
                ),
              ),
              new Padding(padding: EdgeInsets.all(10)),
              new InkWell(
                onTap: null,
                child: new Image.asset(
                  'static/icons/instagram.png',
                ),
              ),
              new Expanded(
                child: new Padding(padding: EdgeInsets.only(right: 10)),
              ),
              new RaisedButton(
                child: new Text(
                  "DOLMA",
                  style: TextStyle(fontSize: 14),
                ),
                textColor: Colors.white,
                materialTapTargetSize: MaterialTapTargetSize.padded,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Color.fromRGBO(98, 2, 238, 1),
                onPressed: () => null,
              ),
            ],
          ),
          // new Padding(padding: EdgeInsets.all(0)),
          new Divider(),

          new Expanded(
              child: new SingleChildScrollView(
            child: new Container(
              padding: EdgeInsets.only(left: 4),
              child: new Text(
              "Land management is the process of managing the use and development (in both urban and rural settings)"
                  " of land resources. Land resources are used for a variety of purposes which may include organic agriculture, "
                  "reforestation, water resource management and eco-tourism projects. Land management can have positive or negative "
                  "effects on the terrestrial ecosystems. Land being over- or misused can degrade and reduce productivity and disrupt"
                  " natural equilibriums. Land management is the process of managing the use and development (in both urban and rural"
                  " settings) of land resources. Land resources are used for a variety of purposes which may include organic "
                  "agriculture, reforestation, water resource management and eco-tourism projects. Land management can have positive"
                  " or negative effects on the terrestrial ecosystems. Land being over- or misused can degrade and reduce "
                  "Land management is the process of managing the use and development (in both urban and rural"
                  "Land management is the process of managing the use and development (in both urban and rural"
                  "Land management is the process of managing the use and development (in both urban and rural"
                  "Land management is the process of managing the use and development (in both urban and rural"
                  "productivity and disrupt natural equilibriums.[1] ",

              // textAlign: TextAlign.justify,

              style: TextStyle(
                wordSpacing: 0.2,
                color: Colors.black45,
              ),
            ),),
          )),
        ],
      ),
    );
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
}
*/
