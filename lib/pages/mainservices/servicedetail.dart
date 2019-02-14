import 'package:flutter/material.dart';

class ServiceDetails extends StatefulWidget {
  @override
  _ServiceDetailsState createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(initialIndex: 0, vsync: this, length: 4);
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
                new Tab(text: "प्रकृया"),
                new Tab(text: "आवस्यक कागजातहरु"),
              ]),
        ),
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: new Text(
                '१. सामान्य हकमा २ प्रतिलिखत तथा गुठी तथा बेजिल्लाको हकमा तीन प्रति लिखत तयार गरी देहायका कागजात सहित कार्यालयमा पेश गर्ने \n२. मोठ, रोक्का भिडाउने\n३. सनाखत गराउने\n४. टोकन लगाउने\n५. कित्ताकाट भए नापी कार्यालयमा पठाउने\n६. मूल्यांकन भिडाउने\n७. रजिष्टेशन दस्तुर असुल गर्ने\n८. तहरिरले पेश भएको लिखत चेक जांच गरी पारितको लागि अधिकृत समक्ष पेश गर्ने\n९. अधिकृतले रीतपुगेको लिखत पारित गरिदिने\n१०. रजिष्टेशन फांटमा पारित लिखत रजिष्टेशन – दर्तागरी रजिष्ट्शन नम्बर दिई एक प्रति लिखत तामेली फाट र एक प्रति मोठ फाटमा बुझाइ दिने\n११. पारित लिखत अनुसार मोठ फांटबाट श्रेस्ता पुर्जा तयार गरी जग्गाधनी दर्ता प्रमाण पुर्जा सम्बन्धित व्यक्ति तथा संस्थालाई उपलब्ध गराउने\n१२. मिसिल तामेली फांटमा बुझाइ दिने',
                style: new TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "क) कित्ताकाट गर्नु नपर्ने",
                    style: new TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  new Text(
                    "पारित गर्ने लिखतको साथ\nजग्गाधनी प्रमाण पुर्जा\nनागरिकताको प्रमाणपत्र,\nचालु आ.ब.को मालपोत बुझाएको रसिद,\nकरचुक्ता प्रमाण,\nसम्बन्धित गा.वि.स. न.पा. को घरबाटोको सिफारिस,\nअन्य आवश्यक प्रमाण ",
                    style: new TextStyle(fontSize: 18.0),
                  ),
                  new Divider(),
                  new Text(
                    "ख) कित्ताकाट गर्नुपर्ने",
                    style: new TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  new Text(
                    "पारित गर्ने लिखतको साथ\nजग्गाधनी प्रमाण पुर्जा,\nनागरिकताको प्रमाण पत्र,\nचालु आ.ब.को मालपोत बुझाएको रसिद,\nकरचुक्ता प्रमाण,\nसम्बन्धित गा.वि.स. , न.पा. को घरबाटोको सिफारिस,\nअन्य आवश्यक प्रमाण ",
                    style: new TextStyle(fontSize: 18.0),
                  ),
                  
                ],
              ),
            ),
          ],
        ));
  }
}
