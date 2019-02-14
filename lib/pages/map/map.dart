import 'package:flutter/material.dart';
import 'package:material_search/material_search.dart';
import 'findoffice.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Office Map"),
      ),
      body: DictionaryBody(),
      
    );
  }
}

class DictionaryBody extends StatefulWidget {
  @override
  _DictionaryBodyState createState() => _DictionaryBodyState();
}

class _DictionaryBodyState extends State<DictionaryBody> {
  final _names =  [
    'Office 1',
    'Office 2',
    'Office 3',
    'Office 4',
    'Office 5',
    'Office 6',
    'Office 7',
    'Office 8',
    'Office 9',
  ];

  String _name = 'All Ofices';

  //final _formKey = new GlobalKey<FormState>();

  _buildMaterialSearchPage(BuildContext context) {
    return new MaterialPageRoute<String>(
      settings: new RouteSettings(
        name: 'material_search',
        isInitialRoute: false,
      ),
      builder: (BuildContext context) {
        return new Material(
          child: new MaterialSearch<String>(
            placeholder: 'Search',
            results: _names.map((String v) => new MaterialSearchResult<String>(
              icon: Icons.location_city,
              value: v,
              text: v,
            )).toList(),
            filter: (dynamic value, String criteria) {
              return value.toLowerCase().trim()
                .contains(new RegExp(r'' + criteria.toLowerCase().trim() + ''));
            },
            onSelect: (dynamic value) => Navigator.of(context).pop(value),
            onSubmit: (String value) => Navigator.of(context).pop(value),
          ),
        );
      }
    );
  }

  _showMaterialSearch(BuildContext context) {
    Navigator.of(context)
      .push(_buildMaterialSearchPage(context))
      .then((dynamic value) {
        setState(() => _name = value as String);
      });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
              child: new MaterialButton(
                color: Colors.blue,
                elevation: 5.0,
                 onPressed: (){
                   Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new FindYourOffice()),
                  );
                 },
                 child: new Text("Find your office"),
              
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: new Center(
                      child: new Text("Location for: $_name"),
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          _showMaterialSearch(context);
        },
        tooltip: 'Search',
        child: new Icon(Icons.search),
      ),
    );
  }
}