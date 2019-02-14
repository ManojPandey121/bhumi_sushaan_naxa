import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadTab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new FutureBuilder(
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
          }),
    );
  }
}
