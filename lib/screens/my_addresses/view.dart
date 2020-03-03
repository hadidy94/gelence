import 'package:flutter/material.dart';
import 'package:glencee/helpers/button.dart';
import 'package:glencee/helpers/rounded_back_appbar.dart';
import 'package:glencee/screens/add_address/view.dart';

class MyAddressesScreen extends StatefulWidget {
  @override
  _MyAddressesScreenState createState() => _MyAddressesScreenState();
}

class _MyAddressesScreenState extends State<MyAddressesScreen> {
  TabController _controller;

  @override
  void initState() {
    _controller = new TabController(vsync: DrawerControllerState(), length: 2);
    super.initState();
  }

  Widget _buildTaps() {
    return Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          color: Colors.white12,
          margin: EdgeInsets.only(top: 30),
          child: TabBar(
            labelPadding: EdgeInsets.only(right: 3, left: 3),
            isScrollable: true,
            controller: _controller,
            unselectedLabelColor: Colors.black,
            labelColor: Theme.of(context).primaryColor,
            indicatorColor: Theme.of(context).primaryColor,
            tabs: [
              Container(
                width: MediaQuery.of(context).size.width / 2 - 8,
                height: 40,
                child: Tab(
                  child: Text(
                    'المستلمين',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2 - 8,
                height: 40,
                child: Tab(
                  child: Text(
                    'عناويني',
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
      height: MediaQuery.of(context).size.height - 200,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: TabBarView(controller: _controller, children: <Widget>[
          SizedBox(
              height: MediaQuery.of(context).size.height - 200,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return addressCard(
                        image: 'assets/location.png',
                        title: 'مصر - المنصورة - حي الجامعة');
                  })),
          SizedBox(
              height: MediaQuery.of(context).size.height - 200,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return myAddressCard(
                        image: 'assets/location.png',
                        title: 'مصر - المنصورة - حي الجامعة');
                  })),
        ]),
      ),
    );
  }

  Widget addressCard({String image, String title}) {
    return Material(
      elevation: 0.5,
      child: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'علي ربيع البنا',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.withOpacity(0.4)),
                    child: Center(
                      child: Icon(
                        Icons.delete,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).primaryColor.withOpacity(0.4)),
                    child: Center(
                      child: Icon(
                        Icons.edit,
                        color: Theme.of(context).primaryColor,
                        size: 20,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(image))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myAddressCard({String image, String title}) {
    return Material(
      elevation: 0.5,
      child: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.withOpacity(0.4)),
                    child: Center(
                      child: Icon(
                        Icons.delete,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).primaryColor.withOpacity(0.4)),
                    child: Center(
                      child: Icon(
                        Icons.edit,
                        color: Theme.of(context).primaryColor,
                        size: 20,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(image))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'تحديد كعنوان حالي',
                    style: TextStyle(color: Theme.of(context).accentColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white30,
          ),
          roundedBackAppBar(context: context, title: 'عناويني'),
          Positioned(
            top: 70,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[_buildTaps(), _body()],
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 15,
            right: 15,
            child: buildButton(
                color: Theme.of(context).primaryColor,
                title: 'اضف عنوان ',
                bottom: 10,
                top: 15,
                right: 0,
                left: 0,
                context: context,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddAddressScreen()));
                }),
          )
        ],
      ),
    );
  }
}
