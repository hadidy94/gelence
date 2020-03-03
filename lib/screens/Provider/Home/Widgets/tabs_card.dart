import 'package:flutter/material.dart';

Widget tabsCard({BuildContext context, TabController controller}) {
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
          controller: controller,
          unselectedLabelColor: Colors.black,
          labelColor: Theme.of(context).primaryColor,
          indicatorColor: Theme.of(context).primaryColor,
          tabs: [
            Container(
              width: MediaQuery.of(context).size.width / 3 - 8,
              height: 40,
              child: Tab(
                child: Text(
                  'لم يتم التسليم',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3 - 8,
              height: 40,
              child: Tab(
                child: Text(
                  'تم التسليم',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3 - 8,
              height: 40,
              child: Tab(
                child: Text(
                  'الشحنات',
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
