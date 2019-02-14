import 'package:flutter/material.dart';

class AreaConverter extends StatefulWidget {
  @override
  _AreaConverterState createState() => _AreaConverterState();
}

class _AreaConverterState extends State<AreaConverter> {
  TextEditingController mmc = new TextEditingController();
  TextEditingController cmc = new TextEditingController();
  TextEditingController mc = new TextEditingController();
  TextEditingController ftc = new TextEditingController();
  TextEditingController kmc = new TextEditingController();
  TextEditingController inc = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Lenght Converter"),
      ),
      body: new Container(
        padding: EdgeInsets.all(8.0),
        child: new Column(
          children: <Widget>[
            new Text(
                "Input numeric value for any given unit, the result will be auto populated in rest of the units"),
            new Divider(),
            new Expanded(
                          child: new TextField(
                             keyboardType: TextInputType.number,
                             autocorrect: false,
                            controller: inc,
                            decoration: new InputDecoration(
                                hintText: "Input your value", labelText: "Value in Inch"),
                            onChanged: (String src) {
                              
                              if (src != '') {
                                double mm = double.parse(src);
                                cmc.text = (mm * 2.54).toStringAsFixed(2);
                                mc.text = (mm * 0.0254).toStringAsFixed(2);
                                ftc.text = (mm * 0.0833333).toStringAsFixed(2);
                                kmc.text = (mm * 0.0000254).toStringAsFixed(2);
                                mmc.text = (mm * 25.4).toStringAsFixed(2);
                              } else {
                                mmc.text = '';
                                cmc.text = '';
                                mc.text = '';
                                ftc.text = '';
                                kmc.text = '';
                                inc.text = '';
                              }
                            },
                          ),
            ),
            new Expanded(
                          child: new TextField(
                              controller: ftc,
                              decoration: new InputDecoration(
                                  hintText: "Input your value",
                                  labelText: "Value in foott"),
                              onChanged: (String src) {
                                if (src != '') {
                                  double mm = double.parse(src);
                                  cmc.text = (mm * 30.48).toStringAsFixed(2);
                                  mc.text = (mm * 0.3048).toStringAsFixed(2);
                                  inc.text = (mm * 12).toStringAsFixed(2);
                                  kmc.text = (mm * 0.0003048).toStringAsFixed(2);
                                  mmc.text = (mm * 304.8).toStringAsFixed(2);
                                } else {
                                  mmc.text = '';
                                  cmc.text = '';
                                  mc.text = '';
                                  ftc.text = '';
                                  kmc.text = '';
                                  inc.text = '';
                                }
                              }),
            ),
            new Expanded(
                          child: new TextField(
                            controller: mmc,
                            decoration: new InputDecoration(
                                hintText: "Input your value", labelText: "Value in mm"),
                            onChanged: (String src) {
                              if (src != '') {
                                double mm = double.parse(src);
                                cmc.text = (mm * 0.1).toStringAsFixed(2);
                                mc.text = (mm * 0.001).toStringAsFixed(2);
                                ftc.text = (mm * 0.00328084).toStringAsFixed(2);
                                kmc.text = (mm * 0.000001).toStringAsFixed(2);
                                inc.text = (mm * 0.0393701).toStringAsFixed(2);
                              } else {
                                mmc.text = '';
                                cmc.text = '';
                                mc.text = '';
                                ftc.text = '';
                                kmc.text = '';
                                inc.text = '';
                              }
                            },
                          ),
            ),
            new Expanded(
                          child: new TextField(
                              controller: cmc,
                              decoration: new InputDecoration(
                                  hintText: "Input your value", labelText: "Value in cm"),
                              onChanged: (String src) {
                                if (src != '') {
                                  double mm = double.parse(src);
                                  ftc.text = (mm * 0.0328084).toStringAsFixed(2);
                                  mc.text = (mm * 0.01).toStringAsFixed(2);
                                  inc.text = (mm * 0.393701).toStringAsFixed(2);
                                  kmc.text = (mm * 0.00001).toStringAsFixed(2);
                                  mmc.text = (mm * 10).toStringAsFixed(2);
                                } else {
                                  mmc.text = '';
                                  cmc.text = '';
                                  mc.text = '';
                                  ftc.text = '';
                                  kmc.text = '';
                                  inc.text = '';
                                }
                              }),
            ),
            new Expanded(
                          child: new TextField(
                              controller: mc,
                              decoration: new InputDecoration(
                                  hintText: "Input your value", labelText: "Value in m"),
                              onChanged: (String src) {
                                if (src != '') {
                                  double mm = double.parse(src);
                                  cmc.text = (mm * 100).toStringAsFixed(2);
                                  ftc.text = (mm * 3.28084).toStringAsFixed(2);
                                  inc.text = (mm * 39.3701).toStringAsFixed(2);
                                  kmc.text = (mm * 0.001).toStringAsFixed(2);
                                  mmc.text = (mm * 1000).toStringAsFixed(2);
                                } else {
                                  mmc.text = '';
                                  cmc.text = '';
                                  mc.text = '';
                                  ftc.text = '';
                                  kmc.text = '';
                                  inc.text = '';
                                }
                              }),
            ),
            new Expanded(
                          child: new TextField(
                              controller: kmc,
                              decoration: new InputDecoration(
                                  hintText: "Input your value", labelText: "Value in KM"),
                              onChanged: (String src) {
                                if (src != '') {
                                  double mm = double.parse(src);
                                  cmc.text = (mm * 100000).toStringAsFixed(2);
                                  mc.text = (mm * 1000).toStringAsFixed(2);
                                  inc.text = (mm * 39370.1).toStringAsFixed(2);
                                  ftc.text = (mm * 3280.84).toStringAsFixed(2);
                                  mmc.text = (mm * 1000000).toStringAsFixed(2);
                                } else {
                                  mmc.text = '';
                                  cmc.text = '';
                                  mc.text = '';
                                  ftc.text = '';
                                  kmc.text = '';
                                  inc.text = '';
                                }
                              }),
            ),
          ],
        ),
      ),
    );
  }
}
