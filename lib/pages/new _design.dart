// this dart file is used only for testing during development. It is of no use

import 'dart:convert';
import 'news/news.dart';
import 'package:flutter/material.dart';
import 'map/map.dart';
import 'faq/faq.dart';
import 'mainservices/mainservices.dart';




class HomePage extends StatelessWidget {
  List data;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new AnimatedTxt(),
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
                                      color: Colors.purple,
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
                          new Image.asset('static/icons/news.png'),
                          new Text(
                            "News",
                            textAlign: TextAlign.center,
                            softWrap: true,
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
                          new Image.asset('static/icons/map.png'),

                          new Text("Services",
                              textAlign: TextAlign.center), //कार्यालय नक्सा
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
                          new Image.asset('static/icons/map.png'),
                          new Text(
                            "Office details",
                            textAlign: TextAlign.center,
                            softWrap: true,
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
                          new Image.asset('static/icons/faq.png'),
                          new Text(
                            "FAQ", textAlign: TextAlign.center,
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
  _AnimatedTxtState createState() => _AnimatedTxtState();
}

class _AnimatedTxtState extends State<AnimatedTxt>
    with TickerProviderStateMixin {
  Animation<int> _characterCount;

  int _stringIndex;
  static const List<String> _kStrings = const <String>[
    'एक सय रुपैयामा श्रीमान श्रीमतीको नाममा संयुक्त जग्गाधनी दर्ता प्रमाण पूर्जा बनाउने प्राबधानबाट लाभ लियौ ।',
    'महिलाको नाममा रजिस्त्रेशन्  लिखत् पास् गर्दा रजिस्त्रेशन् शुल्कमा २५ देखि ५० प्रतिशतसम्म छुत हुने प्राबधानबात लाभ लियौ।',
  ];

  String get _currentString => _kStrings[_stringIndex % _kStrings.length];

  void _animate() async {
    AnimationController controller = new AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    setState(() {
      _stringIndex = _stringIndex == null ? 0 : _stringIndex + 1;
      _characterCount = new StepTween(begin: 0, end: _currentString.length)
          .animate(
              new CurvedAnimation(parent: controller, curve: Curves.easeIn));
    });
    await controller.forward();
    controller.dispose();
  }

  @override
  void initState() {
    super.initState();

    _animate();
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          margin: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          child: _characterCount == null
              ? null
              : new AnimatedBuilder(
                  animation: _characterCount,
                  builder: (BuildContext context, Widget child) {
                    String text =
                        _currentString.substring(0, _characterCount.value);
                    return new Text(text,
                        style: new TextStyle(
                          color: Colors.blue[800],
                        ));
                  },
                ),
        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MaterialButton(
              color: Colors.blue[900],
              onPressed: _animate,
              child: Text(
                "Next ->",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
