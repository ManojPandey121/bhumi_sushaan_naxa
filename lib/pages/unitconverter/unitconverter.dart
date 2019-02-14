import 'package:flutter/material.dart';
import 'unitconterter_lenght.dart';
import 'unitconverter_area.dart';

class UnitConverter extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Unit Converter"),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
     padding: const EdgeInsets.all(8.0),
     child: new InkWell(
              splashColor: Colors.orangeAccent,
              onTap: () {
                 Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>   new LengthConverter())
                  );
                  
              },
              child: new Card(
                elevation: 3.0,
                child: Column(
                  children: <Widget>[
                     new Text("Length Converter",
                      style: new TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    
                    new Container(
                      height: 150.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "static/images/length.jpg"),
                        ),
                      ),
                    ),
                    new Divider(),
                   
                  ],
                ),
              ),
            ),
   ),
   Padding(
     padding: const EdgeInsets.all(8.0),
     child: new InkWell(
              splashColor: Colors.orangeAccent,
              onTap: () {
                 Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>  new AreaConverter())
                  );
                  
              },
              child: new Card(
                elevation: 3.0,
                child: Column(
                  children: <Widget>[
                     new Text("Area Converter",
                      style: new TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    
                    new Container(
                      height: 150.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "static/images/area.jpg"),
                        ),
                      ),
                    ),
                    new Divider(),
                   
                  ],
                ),
              ),
            ),
   ),
 
        ],
      ),
    );
  }
}
