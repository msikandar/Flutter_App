import 'dart:async';
import 'dart:ffi';
import 'package:alapp/global.dart';
import 'package:alapp/screens/alt_home.dart';
import 'package:alapp/screens/contact.dart';
import 'package:alapp/screens/home.dart';
import 'package:alapp/screens/profile.dart';
import 'package:alapp/widget/buildCardNotice.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:alapp/constants.dart';
import 'package:open_file/open_file.dart';

//OpenFile.open("/sdcard/example.pdf");
class Notice extends StatefulWidget {
  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  int _page = 0;
  int linkindex = 1;
  GlobalKey _bottomNavigationKey = GlobalKey();
  List notices = [
    {'sub': 'The food ets kaamda sda ekka gfjy ygj yf fy fyt f yfyf y fy fyf y f yf  ', 'date': '12 April 2020', 'link' : '/storage/emulated/0/certificateish.pdf'},
    {'sub': 'Make is larhes', 'date': '12 April 2020', 'link' : '/storage/emulated/0/Parsing.pdf'},
    {'sub': 'We must jsht djhd it', 'date': '12 April 2020', 'link' : '/storage/emulated/0/certificateish.pdf'},
    {'sub': 'The teasche sjyat kamrni', 'date': '12 April 2020', 'link' : '/storage/emulated/0/certificateish.pdf'},
    {'sub': 'just do it by nike','date': '12 April 2020', 'link' : '/storage/emulated/0/certificateish.pdf'},
    {'sub': 'Jio jee bhar ke','date': '12 April 2020', 'link' : '/storage/emulated/0/certificateish.pdf'}
    
  ];

  final link = ['/storage/emulated/0/certificateish.pdf',
                    '/storage/emulated/0/certificateish.pdf',
                    '/storage/emulated/0/certificateish.pdf',
                    '/storage/emulated/0/certificateish.pdf',
                    '/storage/emulated/0/certificateish.pdf',
                    '/storage/emulated/0/certificateish.pdf',
                    ];

  String _openResult = 'Unknown';

  Future<void> openFile(int index) async {

    
    final result = await OpenFile.open(notices[index]['link']);

    setState(() {
      _openResult = "type=${result.type}  message=${result.message}";
      // linkindex = -1;
      print(linkindex);
    });
  }

  // Future<void> calling(int index) async{
  //   print('index = ');
  //   print(index);
  //   linkindex = index;
  //   openFile();
  //   print('calling open file with index = ');
  //   print(linkindex);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: myGreen,
        // leading: IconButton(
        //     onPressed: () {Navigator.pop(context);},
        //     icon: Icon(Icons.arrow_back),
        //     color: Colors.grey,
            
        // ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu,),
            color: Colors.white,
          )
        ],
        leading: Icon(Icons.more,color: myGreen,),
      ),

      bottomNavigationBar: 
      Hero(
        tag: 'bottomNavBar',
        child: 
        CurvedNavigationBar(
          index: 0,
          key: _bottomNavigationKey,
          color: myGreen,
          backgroundColor: Colors.white,
          items: <Widget>[
            Icon(Icons.notifications, size: 25,color: Colors.white,),
            Icon(Icons.home, size: 25,color: Colors.white,),
            Icon(Icons.person, size: 25,color: Colors.white,),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
              if( _page == 1){
                Timer(Duration(milliseconds: 200), (){Navigator.push(context, MaterialPageRoute(builder: (context) => AltHome()));});}
              else if( _page == 2){
                Timer(Duration(milliseconds: 200), (){Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));});}
            });
          },
        ),),

        body: ListView(
          children: <Widget>[
            buildCardNotice(
              0
            ),
            buildCardNotice(
              1
            ),
            buildCardNotice(
              2
            ),
            buildCardNotice(
              3
            ),
            buildCardNotice(
              4
            ),
            buildCardNotice(
              5
            ),
            buildCardNotice(
              4
            ),
            buildCardNotice(
              3
            ),
          ],
        )
        
    );
  }



Widget buildCardNotice(int index){
  return Card(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 7.0,
      child: GestureDetector(
        onTap: ()=> openFile(index),
        // () async{
        //   final result = await OpenFile.open(link);
        //   print(result);
        // },
        child:Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
            height: 100.0,
            width: MediaQuery.of(context).size.width,
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                     SizedBox(width: 10,),
                    //  Icon(Icons.notifications, color: myGreen,),
                     Container(
                       height: 44,
                       width: 10,
                       decoration: BoxDecoration(
                         color: Colors.yellow
                       ),
                     ),
                     SizedBox(width: 10,),
                     Expanded(
                       child: Text(notices[index]['sub'],
                        textDirection: TextDirection.ltr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,

                        )),
                     ),
                     SizedBox(width: 20,),
                    ],
                 ),
                //  Text(_openResult),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: <Widget>[
                     Text(
                   notices[index]['date'],
                   style: TextStyle(
                     fontSize: 12,
                     letterSpacing: 1,
                   ),
                 ),
                 SizedBox(width: 20),
                   ],
                 ),
              ],
            ),
            
          ),
      ),
      margin: EdgeInsets.symmetric( vertical: 5.0, horizontal: 10.0),
    
    );
}
}