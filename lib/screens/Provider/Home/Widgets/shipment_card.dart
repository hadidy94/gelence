import 'package:flutter/material.dart';
import 'package:glencee/screens/Provider/ShipmentDetails/view.dart';

Widget shipmentCard({BuildContext context}) {
  return Container(
    margin: EdgeInsets.only(top: 15, left: 15, right: 10),
    width: MediaQuery.of(context).size.width,
    height: 100,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.white),
    child: InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ShipmentDetailsScreen()));
      },
      child: Row(
        children: <Widget>[
          Container(
            width: 120,
            height: 90,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/raequest.png'))),
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
                    'Matajer El salam',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'El badee',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.timer,
                    color: Theme.of(context).primaryColor,
                  ),
                  Text(
                    '10:00 Am - 12:00 Am',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
