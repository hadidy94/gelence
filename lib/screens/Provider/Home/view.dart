import 'package:flutter/material.dart';

import 'Widgets/shipment_card.dart';
import 'Widgets/tabs_card.dart';

class ProviderHomeScreen extends StatefulWidget {
  @override
  _ProviderHomeScreenState createState() => _ProviderHomeScreenState();
}

class _ProviderHomeScreenState extends State<ProviderHomeScreen> {
  TabController _controller;

  @override
  void initState() {
    _controller = new TabController(vsync: DrawerControllerState(), length: 3);
    _controller.index = 0;
    super.initState();
  }

  Widget _body() {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: TabBarView(controller: _controller, children: <Widget>[
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Text(
                'لا توجد بيانات',
                style: TextStyle(color: Colors.black),
              ))),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                  child: Text(
                'لا توجد بيانات',
                style: TextStyle(color: Colors.black),
              ))),
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return shipmentCard(context: context);
                  })),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).accentColor,
        ),
        body: ListView(
          children: <Widget>[
//            Container(
//              width: MediaQuery.of(context).size.width,
//              height: 220,
//              decoration: BoxDecoration(
//                  image: DecorationImage(
//                      image: AssetImage('assets/top_header_main.png'),
//                      fit: BoxFit.cover)),
//              child: Center(
//                child: Image.asset(
//                  'assets/logo_white.png',
//                  width: 100,
//                  height: 100,
//                ),
//              ),
//            ),
            tabsCard(context: context, controller: _controller),
            _body()
          ],
        ),
      ),
    );
  }
}
