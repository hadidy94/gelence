import 'package:flutter/material.dart';
import 'package:glencee/helpers/drawer.dart';
import 'package:glencee/screens/order_details/view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _controller = new TabController(vsync: DrawerControllerState(), length: 4);
    _controller.index = 0;
    super.initState();
  }

  Widget _buildTaps() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          color: Colors.white,
          child: TabBar(
            labelPadding: EdgeInsets.only(right: 3, left: 3),
            isScrollable: true,
            controller: _controller,
            unselectedLabelColor: Colors.black,
            labelColor: Theme.of(context).primaryColor,
            indicatorColor: Theme.of(context).primaryColor,
            tabs: [
              Container(
                width: MediaQuery.of(context).size.width / 4 - 8,
                height: 40,
                child: Tab(
                  child: Text(
                    'الكل',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4 - 8,
                height: 40,
                child: Tab(
                  child: Text(
                    'انا المرسل',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4 - 8,
                height: 40,
                child: Tab(
                  child: Text(
                    'انا المستلم',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 4 - 8,
                height: 40,
                child: Tab(
                  child: Text(
                    'انا الوسيط',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _body() {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: TabBarView(controller: _controller, children: <Widget>[
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return _buildCard();
                  })),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
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
              child: Center(
                  child: Text(
                'لا توجد بيانات',
                style: TextStyle(color: Colors.black),
              ))),
        ]));
  }

  Widget _buildCard() {
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OrderDetailsScreen()));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width - 40,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/first.png'))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'الي:',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5,),
                          Text('احمد علي '),

                        ],
                      ),
                      Row(
                        children: <Widget>[Text('12 May 2019')],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        height: 1,
                        color: Colors.black12,
                        width: MediaQuery.of(context).size.width - 180,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            '  المجمعة',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5,),
                          Text('26329299'),

                        ],
                      ),
                      Row(
                        children: <Widget>[Text('في الطريق للواجهة النهائية')],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme.of(context).accentColor,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
          ),
          drawer: buildDrawer(context: context),
          body: ListView(
            children: <Widget>[_buildTaps(), _body()],
          )),
    );
  }
}
