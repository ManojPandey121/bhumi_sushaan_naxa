
import 'detailview.dart';
import 'package:flutter/material.dart';


class BhumisudharMainServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("मालपोत"),
      ),
      body: MainServicesBody(),
    );
  }
}

    class MainServicesBody extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return new Material(
          child: Container(
        child: new ListView(
          children: <Widget>[
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MalpotDelaiPage()),
                );
              },
              child: new ListTile(
                leading: new Image.asset(
                  'static/icons/service.png',
                ),
                title: new Text("रजिष्टे्रशन पास"),
              ),
            ),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MalpotDelaiPage()),
                );
              },
              child: new ListTile(
                leading: new Image.asset(
                  'static/icons/service.png',
                ),
                title: new Text("रजिष्टे्रशन पास"),
              ),
            ),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MalpotDelaiPage()),
                );
              },
              child: new ListTile(
                leading: new Image.asset(
                  'static/icons/service.png',
                ),
                title: new Text("रजिष्टे्रशन पास"),
              ),
            ),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MalpotDelaiPage()),
                );
              },
              child: new ListTile(
                leading: new Image.asset(
                  'static/icons/service.png',
                ),
                title: new Text("रजिष्टे्रशन पास"),
              ),
            ),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MalpotDelaiPage()),
                );
              },
              child: new ListTile(
                leading: new Image.asset(
                  'static/icons/service.png',
                ),
                title: new Text("रजिष्टे्रशन पास"),
              ),
            ),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MalpotDelaiPage()),
                );
              },
              child: new ListTile(
                leading: new Image.asset(
                  'static/icons/service.png',
                ),
                title: new Text("रजिष्टे्रशन पास"),
              ),
            ),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MalpotDelaiPage()),
                );
              },
              child: new ListTile(
                leading: new Image.asset(
                  'static/icons/service.png',
                ),
                title: new Text("रजिष्टे्रशन पास"),
              ),
            ),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MalpotDelaiPage()),
                );
              },
              child: new ListTile(
                leading: new Image.asset(
                  'static/icons/service.png',
                ),
                title: new Text("रजिष्टे्रशन पास"),
              ),
            ),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MalpotDelaiPage()),
                );
              },
              child: new ListTile(
                leading: new Image.asset(
                  'static/icons/service.png',
                ),
                title: new Text("रजिष्टे्रशन पास"),
              ),
            ),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MalpotDelaiPage()),
                );
              },
              child: new ListTile(
                leading: new Image.asset(
                  'static/icons/service.png',
                ),
                title: new Text("रजिष्टे्रशन पास"),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
