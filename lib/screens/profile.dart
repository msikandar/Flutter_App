import 'dart:async';
import 'package:alapp/global.dart';
import 'package:alapp/screens/alt_home.dart';
import 'package:alapp/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'notice.dart';
import 'contact.dart';
import 'package:alapp/constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _page = 1;
  GlobalKey _bottomNavigationKey = GlobalKey();

  TextStyle editDetailsStyle = TextStyle(
                color: Colors.white,
                fontSize: 10.0,
                letterSpacing: 0.0,
              );

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
        leading: Icon(
          Icons.more_horiz,
            color: myGreen,
            
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu,),
            color: Colors.white,
          )
        ],
      ),
      bottomNavigationBar: 
      Hero(
        tag: 'bottomNavBar',
        child: 
        CurvedNavigationBar(
          index: 2,
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
              if( _page == 0){
                Timer(Duration(milliseconds: 200), (){Navigator.push(context, MaterialPageRoute(builder: (context) => Notice()));});}
              else if( _page == 1){
                Timer(Duration(milliseconds: 200), (){Navigator.push(context, MaterialPageRoute(builder: (context) => AltHome()));});}
              

            });
          },
        ),),
        body: Stack(children: <Widget>[ 
            Stack(children: <Widget>[
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 320,
                  decoration: BoxDecoration(
                    color: myGreen,
                  ),
              // child: ,
                ),
              ),
            ],
            ),
            Stack(
              children: <Widget>[
                Positioned(
              top: 20,
              left: 50,
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.orange,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                    )
                  )
                ),
          ),
        ),
        Positioned(
          top: 50.0,
          right: 30.0,
          child: Row(
            children: <Widget>[
              GestureDetector(
            
                onTap: (){},
                child: Container(
              // color: Colors.black,
                  height: 60.0,
                  width: 60.0,
                  child: Column(
              
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 10.0,),
                  Icon(Icons.person_outline,color: Colors.white,), 
                  SizedBox(height: spaceBetweenLines2),
                  Text('Logout',style: editDetailsStyle),
              ],
              ),
              ),
              ),
              SizedBox(width: 5),
              GestureDetector(
            
                onTap: (){ Navigator.pushNamed(context, '/editDetails');},
                child: Container(
              // color: Colors.black,
                  height: 60.0,
                  width: 60.0,
                  child: Column(
              
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 10.0,),
                  Icon(Icons.edit,color: Colors.white,), 
                  SizedBox(height: spaceBetweenLines2),
                  Text('Edit Details',style: editDetailsStyle),
              ],
              ),
              ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 140,
          left: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Mohit Kumar Pandey',style: studentNameStyle),
              SizedBox(height: spaceBetweenLines2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Email:  ', style: studentemailStyle,),
                  Text('pandey45mohit@gmail.com', style: studentemailStyle,),
                ]
              ),
              SizedBox(height: spaceBetweenLines1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Phone:  ', style: studentemailStyle),
                  Text('6370054856', style: studentemailStyle,),
                ]
              ),
              SizedBox(height: spaceBetweenLines1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Gender:  ', style: studentemailStyle),
                  Text('Male', style: studentemailStyle,),
                ]
              ),
              SizedBox(height: spaceBetweenLines2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Reg No:  ', style: studentemailStyle),
                  Text('1805106011', style: studentemailStyle,),
                ]
              ),
              
              SizedBox(height: spaceBetweenLines1),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Semester:  ', style: studentemailStyle),
                  Text('2nd', style: studentemailStyle,),
                ]
              ),
              SizedBox(height: spaceBetweenLines1),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Year of Admission:  ', style: studentemailStyle),
                  Text('2018', style: studentemailStyle,),
                ]
              ),
              
              
            ],
          ),
        ),
              ],
            ),
      // Stack(children: <Widget>[
      //   // Positioned(
      //   //   top: 500.0,
      //   //   left: 30.0,
      //   //   child: Container(
      //   //   height: 100,
      //   //   width: 500,
      //   //   color: Colors.green,
      //   //   // child: Text('container'),
      //   // ),),
        
      // Positioned(
      //     left: 50.0,
      //     top: 350.0,
          // child: 
          Container(
            margin: EdgeInsets.fromLTRB(50, MediaQuery.of(context).size.height/2-40, 0, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children:<Widget>[ 
                  Positioned(
                    // top: 30,
                    // left: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: <Widget>[
                      // Container(
                      //   height: MediaQuery.of(context).size.height/2-40,
                      // ),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Text('Home Town:', style: additionalHeadingStyle),
                          SizedBox(height: spaceBetweenLines1,),
                          Text('Sambalpur', style: additionalDetailStyle),
                        ],
                      ),
                      SizedBox(height: spaceBetweenLines3,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Text('Field of Interest:', style: additionalHeadingStyle),
                          SizedBox(height: spaceBetweenLines1,),
                          Container(
                            // padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
                            margin: EdgeInsets.only(top: 6.0),
                            // height: 70.0,
                            // width: 400.0,
                            // color: Colors.green,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Icon(Icons.donut_small, size: 13.0,),
                                SizedBox( width: iconSpacing),
                                Text('Android App Developement', style: additionalDetailStyle),
                              ],),
                              SizedBox(height: spaceBetweenLines1),
                              Row(children: <Widget>[
                                Icon(Icons.donut_small, size: 13.0),
                                SizedBox( width: iconSpacing),
                                Text('Flutter', style: additionalDetailStyle),
                              ],)
                            ],
                          ),
                          ),
                          // Text('Android App Developement, Flutter', style: additionalDetailStyle),
                        ],
                      ),
                      SizedBox(height: spaceBetweenLines3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Text('Projects:', style: additionalHeadingStyle),
                          SizedBox(height: spaceBetweenLines1,),
                          Container(
                            margin: EdgeInsets.only(top: 6.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Icon(Icons.work, size: 13.0,),
                                SizedBox( width: iconSpacing),
                                Text('FitToFab: Fitness app using Flutter', style: additionalDetailStyle),
                              ],),
                              SizedBox(height: spaceBetweenLines1),
                              Row(children: <Widget>[
                                Icon(Icons.work, size: 13.0),
                                SizedBox( width: iconSpacing),
                                Text('Disease predection using ML', style: additionalDetailStyle),
                              ],)
                            ],
                          ),
                          ),
                        ],
                      ),
                      SizedBox(height: spaceBetweenLines3),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Text('Skills:', style: additionalHeadingStyle),
                          SizedBox(height: spaceBetweenLines1,),
                          Container(
                            margin: EdgeInsets.only(top: 6.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Icon(Icons.bubble_chart, size: 13.0,),
                                SizedBox( width: iconSpacing),
                                Text('Adaptive Thinking', style: additionalDetailStyle),
                              ],),
                              SizedBox(height: spaceBetweenLines1),
                              Row(children: <Widget>[
                                Icon(Icons.bubble_chart, size: 13.0),
                                SizedBox( width: iconSpacing),
                                Text('Communication', style: additionalDetailStyle),
                              ],),
                              
                            ],
                          ),
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                ),
                ],
              ),
            ),
          ),
        
        // ),],),
      ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{


  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-80);
    var controllPoint = Offset(0, size.height);
    var endPoint = Offset(size.width/5, size.height);
    path.quadraticBezierTo(controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }}