import 'dart:async';
import 'package:alapp/global.dart';
import 'package:alapp/screens/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'notice.dart';

class AltHome extends StatefulWidget {
  @override
  _AltHomeState createState() => _AltHomeState();
}

class _AltHomeState extends State<AltHome> {
  
  GlobalKey _bottomNavigationKey = GlobalKey();
  int _page = 2;
  int current = 0;
  double icon_size = 26;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myGreen,
        centerTitle: true,
        title: Text('TATHYA'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.message), onPressed: (){Navigator.pushNamed(context, '/chatHome');}),
        ],
        leading: Icon(Icons.info, color: myGreen,),
      ),

      bottomNavigationBar: Hero(
        tag: 'bottomNavBar',
        child: CurvedNavigationBar(
          index: 1,
          key: _bottomNavigationKey,
          
          color: myGreen,
          backgroundColor: Colors.white70,
          items: <Widget>[
            Icon(Icons.notifications, size: 25,color: Colors.white,),
            Icon(Icons.home, size: 25,color: Colors.white,),
            Icon(Icons.person, size: 25,color: Colors.white,),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
              if( _page == 0){
                Timer(Duration(milliseconds: 200), (){Navigator.push(context, MaterialPageRoute(builder: (context) => Notice()));});}
              // else if( _page == 1){
              //   Timer(Duration(milliseconds: 400), (){Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));});}
              else if( _page == 2){
                Timer(Duration(milliseconds: 200), (){Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));});}
            });
          },
        ),),
      body: Stack(
          children: <Widget>[
            Stack(
              children : <Widget>[ 
                Positioned(
                  
                  
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color:Colors.white70,
                      borderRadius: BorderRadius.circular(30),
                    ),
                     child: Container(),
                    
                  ),
                
              ),
              Stack(
                      children: [
                        Positioned(
                          top: 100,
                          child: Container(
                          height:100,
                          width: MediaQuery.of(context).size.width-20,
                          
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children :<Widget>[ Text(
                              'Alumni',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0

                              ),
                            ),
                            ],
                          ),
                      ),
                        ),
                      ],
                    ),
              ],
            ),
            SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Positioned(
                      
                      child: Column(
                          // mainAxisSize: MainAxisSize.max,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,

                          children: <Widget>[
                            Container(
                              height: 200,
                            ),
                            singleScrollChild('Events',),
                            SizedBox(height: 15),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                Container(
                                child: createHeading('Current Batches')
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                      children: <Widget>[
                                      GestureDetector(child: batchCards('First Year'), onTap: (){Navigator.pushNamed(context, '/students');},),
                                      GestureDetector(child: batchCards('Second Year'), onTap: (){Navigator.pushNamed(context, '/students');},),
                                      ],
                                      ),
                                      GestureDetector(child: batchCards('Final Year'), onTap: (){Navigator.pushNamed(context, '/students');},),
                                    ],
                                  ),
                                  margin: EdgeInsets.fromLTRB(10,7,0,0),
                                ),
                                
                              ],)
                              
                            ),
                            SizedBox(height: 15),


                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: createHeading('More'),
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        GestureDetector(child:_buildCard('About Us', 1, Icon(Icons.info,size: icon_size, color: Colors.white,)), onTap:(){ Navigator.pushNamed(context, '/alumni');},),
                                        GestureDetector(child:_buildCard("Alumni", 2, Icon(Icons.group,size: icon_size, color: Colors.white,)), onTap:(){ Navigator.pushNamed(context, '/alumni');},),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        GestureDetector(child:_buildCard('Projects', 3, Icon(Icons.work,size: icon_size, color: Colors.white,)), onTap:(){ Navigator.pushNamed(context, '/alumni');},),
                                        GestureDetector(child:_buildCard('Feedback', 4, Icon(Icons.feedback,size: icon_size, color: Colors.white,)), onTap:(){ Navigator.pushNamed(context, '/students');},),
                                        
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                  
                  
                  
                  
                  
                
                            // singleScrollChild('Projects',),
                            SizedBox(height: 15),
                            singleScrollChild('Gallery',),
                            SizedBox(height: 15),
                            // singleScrollChild('About us'),
                            // SizedBox(height: 15),
                            // singleScrollChild('Alumni',),

                          ],
                        ),
                      ),
                    
                  
                ],
              ),
            )
          ],
        ),
        
      
    );
  }

  Widget batchCards(String displayText) {
    return Container(
      height: 50,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10) ,
        color: myGreen.withOpacity(.25),
      ),
      child: Center(
        child: Text(
          displayText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,

          ),
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    );
  }
}


  Widget singleScrollChild(String heading) {
    
    
    return Container(
      height:200,
      // color:Colors.indigo,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5.0
            ),
            child: Text(
              heading,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0
              ),
            ),
          ),
          Container(
            height: 150.0,
            width: 400.0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  createContainer(),
                  createContainer(),
                  createContainer(),
                  createContainer(),
                ],
              ),
            ),

          ),
        ],
      ),
    );
  }


Widget createContainer(){
    return Card(
      elevation: 5,

      color: myGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),

      ),
      child: Container(
        height: 150.0,
        width: 200.0,
        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: myGreen,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                      )
                    )
                  ),
        margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
      ),
    );
  }

Widget _buildCard (String name, int cardIndex, Widget icon){
  return Container(
    height: 150,
    width: 150,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: myGreen,
            blurRadius: 1,
            spreadRadius: 1,
            
          )
        ]
      ),
      
      child: Column(
        children: <Widget>[
          SizedBox(height: 45.0),
          Stack(
            children: <Widget>[
              icon,
              
              
            ]),
              SizedBox(height: 15.0),
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
              // SizedBox(height: 50.0),
        ],
      ),   
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),    
  );
}

Widget createHeading(String displayText){
  return Padding(
                                  padding: EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 5.0
                                ),
                                child: Text(
                                  displayText,
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0
                                  ),
                                  ),
                                );
}