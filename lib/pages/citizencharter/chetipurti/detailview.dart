import 'package:flutter/material.dart';

class MalpotDelaiPage extends StatefulWidget {
  @override
  _MalpotDelaiPageState createState() => _MalpotDelaiPageState();
}

class _MalpotDelaiPageState extends State<MalpotDelaiPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(initialIndex: 0, vsync: this, length: 5);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Service Details"),
          bottom: new TabBar(
              indicatorColor: Colors.amber,
              // labelColor: Colors.white,
              controller: controller,
              tabs: <Tab>[
                new Tab(text: "सेवा ग्राहीवर्ग जनताले पुर्याउनु पर्ने प्रकृया तथा प्रमाण"),
                new Tab(text: "शुल्क दस्तुर"),
                new Tab(text: "लाग्ने समय"),
                new Tab(text: "जिम्मेवार पदाधिकारी शाखा इकाई फाँट"),
                new Tab(text: "कैफियत"),
              ]),
        ),
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: new Text(
                'सक्कल ज.ध.प्र.पूर्जा, नागरिकता प्रमाणपत्रको सक्कल र प्रतिलिपी समेत (लिने दिनेको),चालू आ.व.को मालपोत असूली रसिद घर समेत भए कर क्लियरेन्स पत्र र राजिनामा लिखत',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: new Text(
                'प्रत्येक आर्थिक वर्ष आर्थिक ऐनले तोके बमोजिम',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: new Text(
                'सोही दिन',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: new Text(
                'रजिष्टे्रशन फाँट मोठ',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
   new Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: new Text(
                '',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
           
          ],
        ));
  }
}
