import 'package:flutter/material.dart';
import 'sampleformdownload.dart';


class SampleForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("निवेदनका को ढाचा"),
      ),
      body: new CitizenBody(),
    );
  }
}

class CitizenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: <Widget>[
          new GridTile(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SampleFormDownload()
                        ),
                );
              },
              child: new Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: new Card(
                    color: Colors.white,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Image.asset("static/icons/sampleform.png"),
                        new Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "मालपोत",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.purple,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
          new GridTile(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SampleFormDownload()));
              },
              child: new Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: new Card(
                    color: Colors.white,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Image.asset("static/icons/sampleform.png"),
                        new Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "भूमिसुधार कार्यालय",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.purple,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
          new GridTile(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SampleFormDownload()));
              },
              child: new Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: new Card(
                    color: Colors.white,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Image.asset("static/icons/sampleform.png"),
                        new Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "नापी विभाग",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.purple,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
          new GridTile(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SampleFormDownload()));
              },
              child: new Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: new Card(
                    color: Colors.white,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Image.asset("static/icons/sampleform.png"),
                        new Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "क्षतिपूर्ति सहितको नागरिक वडापत्र",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.purple,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
          new GridTile(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SampleFormDownload()));
              },
              child: new Padding(
                padding: const EdgeInsets.all(3.0),
                child: new Card(
                  color: Colors.white,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset("static/icons/sampleform.png"),
                      new Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "राष्ट्रिय भु-उपयोग आयोजना",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.purple,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
