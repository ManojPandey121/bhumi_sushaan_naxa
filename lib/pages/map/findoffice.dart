import 'package:flutter/material.dart';

class FindYourOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Find Your Office"),
      ),
      body: FindYourOfficeBody(),
    );
  }
}

class FindYourOfficeBody extends StatefulWidget {
  @override
  _FindYourOfficeBodyState createState() => _FindYourOfficeBodyState();
}

class _FindYourOfficeBodyState extends State<FindYourOfficeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Container(
            padding: EdgeInsets.only(top: 15.0),
            alignment: FractionalOffset.center,
            child: new Text("Select your State", style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),)
            ),
          new Container(
            alignment: FractionalOffset.center,
            padding: const EdgeInsets.only(left: 30.0),
            child: new DropdownButton<String>(
              elevation: 14,
              hint: new Text("Select your State"),
              items: <String>[
                'State 1',
                'State 2',
                'State 3',
                'State 4',
                'State 5',
                'State 6',
                'State 7'
              ].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (value) {
                print(value);
              },
            ),
          ),
           new Container(
            padding: EdgeInsets.only(top: 15.0),
            alignment: FractionalOffset.center,
            child: new Text("Select Office", style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),)
            ),
          new Container(
            alignment: FractionalOffset.center,
            padding: const EdgeInsets.only(left: 30.0),
            child: new DropdownButton<String>(
              elevation: 14,
              hint: new Text("Select your State"),
              items: <String>[
                'Office 1',
                'Office 2',
                'Office 3',
                'Office 4',
                'Office 5',
                'Office 6',
                'Office 7'
              ].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (value) {
                print(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
