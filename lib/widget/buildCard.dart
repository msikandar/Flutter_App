import 'package:flutter/material.dart';

Widget buildCardAlumni(String name, String status, int cardIndex) {
    return Card( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 12.0),
          Stack(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.blue[400],
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                    )
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == 'Away' ? Colors.amber : Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0
                  )
                ),
              )
            ]),
              SizedBox(height: 8.0),
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                status,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey
                ),
              ),
              SizedBox(height: 15.0),
              Expanded(
                child: Container(
                  width: 175.0,
                  decoration: BoxDecoration(
                    color:Colors.blue[400],
                    borderRadius: BorderRadius.only
                    (
                      bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)
                  ),
                ),
                child: Center(
                  child: Text('View Details',
                  style: TextStyle(
                    color: Colors.white, fontFamily: 'Quicksand'
                  ),
                ),
              )
              )
              )
            ],
          ),
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
  
   );
  }