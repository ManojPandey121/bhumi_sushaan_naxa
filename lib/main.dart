import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hamrobhumi/pages/download/download.dart';
import 'pages/about/about.dart';
import 'pages/home.dart';
import 'pages/links/links.dart';
import 'pages/contact/contact_us.dart';
import 'pages/about/about_developer.dart';
import 'pages/unitconverter/unitconverter.dart';
import 'pages/dictionary/dictionary.dart';
import 'pages/mainservices/mainservices.dart';
import 'pages/citizencharter/citizencharter.dart';
import 'pages/sampleform/sampleform.dart';
import 'pages/priorityprojects/priorityprjects.dart';
import 'pages/feedback/feedback.dart';
import 'pages/videos/videos.dart';
import 'introvideo.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(new MaterialApp(
    routes: <String, WidgetBuilder>{
      '/mainservices': (BuildContext context) => new MainServices(),
      '/calculator': (BuildContext context) => new UnitConverter(),
      '/dictionary': (BuildContext context) => new Dictionary(),
      '/download': (BuildContext context) => new DownloadPage(),
      '/citizencharter': (BuildContext context) => new CitizenCharter(),
      '/sampleform': (BuildContext context) => new SampleForm(),
      '/priorityprojetcs': (BuildContext context) => new PriorityProjects(),
      '/feedback': (BuildContext context) => new FeedBack(),
      '/videos': (BuildContext context) => new Videos(),
    },
    title: "हाम्रो भूमी",
    theme: new ThemeData(
      primaryColor: Colors.blue.shade800,
    ),
    home: new Tabs(),
    debugShowCheckedModeBanner: false,
  ));
}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => new _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Colors.white),
          actions: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(2.0),
              child: new CircleAvatar(
                maxRadius: 25.0,
                backgroundImage: AssetImage(
                  'static/icons/minister.jpg',
                ),
              ),
            ),
            new Icon(
              Icons.notifications,
              size: 40.0,
              color: Colors.white,
            ),
          ],
          title: new Text(
            "हाम्रो भूमी",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new DrawerHeader(
                child: new Row(
                  children: <Widget>[
                    new Image.asset(
                      'static/images/logo.png',
                      height: 80.0,
                    ),
                    new Expanded(
                        child: new Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: new Center(
                          child: new Text(
                        "Ministry of Agriculture, Land Management and Cooperatives ",
                        style: new TextStyle(fontSize: 16.0),
                      )),
                    )),
                  ],
                ),
              ),
              new ListTile(
                leading: new Icon(Icons.info_outline),
                title: new Text("हाम्रो बारेमा"),
                onTap: () {
                  //print("About tapped");
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new AboutPage()),
                  );
                },
              ),
              new Divider(),
              new ListTile(
                leading: new Icon(Icons.contact_phone),
                title: new Text("Contact Us"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ContactUs()),
                  );
                },
              ),
              new Divider(),
              new ListTile(
                leading: new Icon(Icons.developer_mode),
                title: new Text("About Developer"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new AboutDeveloper()),
                  );
                },
              ),
              new Divider(),
              new ListTile(
                leading: new Icon(Icons.link),
                title: new Text("Important Link"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ImportantLinks()),
                  );
                },
              ),
              new Divider(),
              new ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text("Watch Minister's Video"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "App version : 1.0.0",
                  style: new TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ),
        body: new IntroVideo(),
      ),
    );
  }
}
