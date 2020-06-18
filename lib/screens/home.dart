import 'dart:async';

import 'package:alapp/screens/contact.dart';
import 'package:alapp/screens/notice.dart';
import 'package:alapp/screens/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double icon_size = 35.0;
  int _page = 2;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                color: Colors.blue[400],
              ),
              // child: ,
            ),
        ),
        Container(
          margin: EdgeInsets.only(top: 250.0),
            height: 430.0,
            child:CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(2.0),
                sliver: SliverGrid.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 4.0,
                children: <Widget>[
                  GestureDetector(child:_buildCard('About Us', 1, Icon(Icons.info,size: icon_size,)), onTap:(){ Navigator.pushNamed(context, '/alumni');},),
                  GestureDetector(child:_buildCard('Students', 2, Icon(Icons.people,size: icon_size,)), onTap:(){ Navigator.pushNamed(context, '/students');},),
                  GestureDetector(child:_buildCard("Alumni", 3, Icon(Icons.group,size: icon_size,)), onTap:(){ Navigator.pushNamed(context, '/alumni');},),
                  GestureDetector(child:_buildCard('Projects', 4, Icon(Icons.work,size: icon_size,)), onTap:(){ Navigator.pushNamed(context, '/alumni');},),
                  
                  
                ],
              ),
              ),
            ],
          ),
          ),
      ],),
      bottomNavigationBar: Hero(
        tag: 'bottomNavBar',
        child: CurvedNavigationBar(
          index: 1,
          key: _bottomNavigationKey,
          color: Colors.orangeAccent,
          backgroundColor: Colors.white,
          items: <Widget>[
            Icon(Icons.notifications, size: 25),
            Icon(Icons.home, size: 25),
            Icon(Icons.person, size: 25),
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
        // body: Container(
        //   color: Colors.blueAccent,
        //   child: Center(
        //     child: Column(
        //       children: <Widget>[
        //         Text(_page.toString(), textScaleFactor: 10.0),
        //         RaisedButton(
        //           child: Text('Go To Page of index 1'),
        //           onPressed: () {
        //             //Page change using state does the same as clicking index 1 navigation button
        //             final CurvedNavigationBarState navBarState =
        //                 _bottomNavigationKey.currentState;
        //             navBarState.setPage(1);
        //           },
        //         )
        //       ],
        //     ),
        //   ),
        // ),
    );
  }
}


class MyClipper extends CustomClipper<Path>{


  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-70);
    var controllPoint = Offset(50, size.height);
    var endPoint = Offset(size.width/2, size.height);
    path.quadraticBezierTo(controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }}

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.green,
//         child:CustomPaint(
//                 painter: CurvePainter(),
//               ),
//         //  Stack(
//         //   children: <Widget>[
//         //     Container(
//         //       // child: CustomPaint(
//         //       //   painter: CurvePainter(),
//         //       // ),
//         //       // height: MediaQuery.of(context).size.height/2.5,
//         //       // color: Colors.green,
//         //       // decoration: BoxDecoration(
//         //       //     color: Colors.green,
//         //       //     borderRadius: BorderRadius.,
//         //       //     boxShadow: [
//         //       //       BoxShadow(
//         //       //         blurRadius: 20.0,
//         //       //         color: Colors.greenAccent[100].withOpacity(0.5),
//         //       //       )
//         //       //     ]
//         //       // ),
//         //     )
//         //   ],
//         // ),
//         ), 
      

//     );
//   }
// }

// class CurvePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint();
//     paint.color = Colors.blue[400];
//     paint.style = PaintingStyle.fill; // Change this to fill

//     var path = Path();

//     path.moveTo(0, size.height * 0.40);
//     path.quadraticBezierTo(
//         size.width / 2, size.height / 2, size.width, size.height * 0.40);
//     path.lineTo(size.width, 0);
//     path.lineTo(0, 0);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }

Widget _buildCard (String name, int cardIndex, Widget icon){
  return Card(
    
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 45.0),
          Stack(
            children: <Widget>[
              icon,
              // Container(
              //   height: 60.0,
              //   width: 60.0,
                
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(30.0),
              //     color: Colors.green,
                  
              //     image: DecorationImage(
              //       image: NetworkImage(
              //         'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
              //       )
              //     )
              //   ),
              // ),
              
            ]),
              SizedBox(height: 15.0),
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              // SizedBox(height: 50.0),
        ],
      ),   
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),    
  );
}