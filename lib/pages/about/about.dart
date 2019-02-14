import 'package:flutter/material.dart';
import 'aboutministry.dart';
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title:new Padding(
                   padding: const EdgeInsets.only(top:18.0),
                   child: Text("About Us", style: new TextStyle(fontSize: 18.0),),
                 ),),
          body: new Container(
        child: Center(
         child: new Column(
           children: <Widget>[
             new Column(
               children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("नेपाल सरकार कृषि, भूमि व्यवस्था तथा सहकारी मन्त्रालय", style: new TextStyle(fontSize: 22.0),),
                  ),
              new Divider(
                color: Colors.blueAccent,
              ),
                
                 new Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("नेपालमा बैदिककाल देखि नै भूमिलाई राज्यको अधिनमा राखी सो भूमिको उपभोग गर्नेले निश्चित कर राज्यलाई वुझाउनु पर्ने प्रचलन रहदै आएको पाईन्छ । नेपालमा मालपोत असुली  गर्ने कार्य कहिले देखि भयो भन्ने यथार्थ पत्ता नलागे पनि भूमिकर उठाउने कुरा ऋग्वेद र अथर्ववेदमा समेत उल्लेख भएको पाईन्छ । लिच्छवीकालमा जग्गाको प्रशासन विकेन्द्रित थियो । त्यसवेला गाउँको पाञ्चालीले जग्गाको प्रशासन गर्दथे । राजा जयस्थिति मल्लले जग्गा नापजाँच गराउने र विर्ता जग्गा विक्री गर्न र बन्धक राख्न पाउने नियम वसालेका थिए । यस अघिका महिषपाल तथा किराँतको शासनकालमा जग्गाधनी पूर्जा जस्तै “लेख्य” नामको प्रमाण दिइन्थ्यो र उत्पादन अनुसार जग्गाको कुत तिर्नु पर्ने व्यवस्था थियो ।", maxLines: 6, overflow: TextOverflow.ellipsis, style: new TextStyle(fontSize: 14.0),),
                 ),
                 new MaterialButton(
                   
                    onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new AboutFull()),
                );
              },
                   elevation: 4.0,
                   child: Text("Read More ->", style: new TextStyle(color: Colors.white),),
                   minWidth: 700.0,
                   color: Colors.blueAccent,
                 ),
               
               ],
             ),
             new Divider(),
             new MyTabs(),
               ],
        ),
        ),

      ),
    );
  }
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {


  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(initialIndex:0,vsync: this, length:5);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Expanded(
          child: new Scaffold(

        appBar: new AppBar(
          leading: new Container(),
          title: new Text("Sub Departments.."),
          bottom: new TabBar(
            indicatorColor: Colors.amber,
           // labelColor: Colors.white,
                controller: controller,
                tabs: <Tab>[
                  new Tab(text: "SD"),
                  new Tab(text: "DolRM"),
                  new Tab(text: "LMTC"),
                  new Tab(text: "DoLIA"),
                  new Tab(text:"NLUD"),
                ]
              ),
        ),
              body: new TabBarView(
                controller: controller,
                children: <Widget>[
                  new Text("First tab"),
                  new Text("Second tab"),
                  new Text("Third tab"),
                  new Text("Fouth tab"),
                  new Text("Fifth tab"),
                ],
              )
        
      ),
    );
      
      
  }
}