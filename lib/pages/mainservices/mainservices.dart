import 'package:flutter/material.dart';
import 'servicedetail.dart';

class MainServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("मुख्य सेवाहरु"),
      ),
      body: MainServicesBody(),
    );
  }
}

class MainServicesBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView(
        children: <Widget>[
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ServiceDetails()),
              );
            },
            child: new ListTile(
              leading: new Image.asset(
                'static/icons/service.png',
              ),
              title: new Text("लिखत पारित"),
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ServiceDetails()),
              );
            },
            child: new ListTile(
              leading: new Image.asset(
                'static/icons/service.png',
              ),
              title: new Text("लिखत पारित"),
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ServiceDetails()),
              );
            },
            child: new ListTile(
              leading: new Image.asset(
                'static/icons/service.png',
              ),
              title: new Text("लिखत पारित"),
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ServiceDetails()),
              );
            },
            child: new ListTile(
              leading: new Image.asset(
                'static/icons/service.png',
              ),
              title: new Text("लिखत पारित"),
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ServiceDetails()),
              );
            },
            child: new ListTile(
              leading: new Image.asset(
                'static/icons/service.png',
              ),
              title: new Text("लिखत पारित"),
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ServiceDetails()),
              );
            },
            child: new ListTile(
              leading: new Image.asset(
                'static/icons/service.png',
              ),
              title: new Text("लिखत पारित"),
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ServiceDetails()),
              );
            },
            child: new ListTile(
              leading: new Image.asset(
                'static/icons/service.png',
              ),
              title: new Text("लिखत पारित"),
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ServiceDetails()),
              );
            },
            child: new ListTile(
              leading: new Image.asset(
                'static/icons/service.png',
              ),
              title: new Text("लिखत पारित"),
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ServiceDetails()),
              );
            },
            child: new ListTile(
              leading: new Image.asset(
                'static/icons/service.png',
              ),
              title: new Text("लिखत पारित"),
            ),
          ),
          new InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new ServiceDetails()),
              );
            },
            child: new ListTile(
              leading: new Image.asset(
                'static/icons/service.png',
              ),
              title: new Text("लिखत पारित"),
            ),
          ),
          
        ],
      ),
    );
  }
}
