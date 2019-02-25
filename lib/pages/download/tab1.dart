import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadTab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView(
        children: <Widget>[

          new Container(
            padding: EdgeInsets.all(10),
            child: new TextField(
              controller: null,
              decoration: new InputDecoration(
                fillColor: Color.fromRGBO(237, 240, 255, 1),
                prefixIcon: Icon(Icons.search),
                filled: true,
                hintText: "Search documents ...",
                border: InputBorder.none,
              ),
              onChanged: null,
            ),
          ),


          new Container(
            height: 500,
            width: (MediaQuery.of(context).size.width),
            child: new FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('static/json/download/tab1.json'),
                builder: (context, snapshot) {
                  var listitem = json.decode(snapshot.data.toString());
                  return new ListView.builder(

                    itemCount: listitem.length,
                    itemBuilder: (BuildContext covariant, int index) {
                      return new Container(

                        padding: EdgeInsets.all(5),
                      //  color: Color.fromRGBO(237, 240, 255, 1),

                        child: new Column(
                          children: <Widget>[

                                new  ListTile(


                                  title: new Text(listitem[index]["title"]),
                                  trailing: new RaisedButton(
                                      onPressed: () async {
                                        var url = listitem[index]["url"];

                                        if (await canLaunch(url)) {

                                          await launch(url, forceWebView: false, forceSafariVC: true);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      },
                                      child: new Image.asset('static/icons/download_new.png')),
                                  // subtitle: new Text(listitem[index]["subtitle"]),
                                  leading: new Icon(Icons.picture_as_pdf),
                                ),
                                new Padding(padding: EdgeInsets.all(5),)
                              ],
                            ),


                       //     new Padding(padding: EdgeInsets.all(5)),



                      );
                    },
                  );
                }),
          ),



        ],
      ),

     /* child: new FutureBuilder(
          future: DefaultAssetBundle
              .of(context)
              .loadString('static/json/download/tab1.json'),
          builder: (context, snapshot) {
            var listitem = json.decode(snapshot.data.toString());
            return new ListView.builder(
              itemCount: listitem.length,
              itemBuilder: (BuildContext covariant, int index) {
                return new Card(
                  elevation: 4.0,
                  child: ListTile(
                    title: new Text(listitem[index]["title"]),
                    trailing: new RaisedButton(
                        onPressed: () async {
                          var url = listitem[index]["url"];
                          
                          if (await canLaunch(url)) {
                            
                            await launch(url, forceWebView: false, forceSafariVC: true);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        child: new Icon(Icons.file_download)),
                    subtitle: new Text(listitem[index]["subtitle"]),
                    leading: new Icon(Icons.picture_as_pdf),
                  ),
                );
              },
            );
          }),*/
    );
  }
}























