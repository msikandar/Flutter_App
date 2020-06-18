import 'package:alapp/global.dart';
import 'package:flutter/material.dart';
import 'package:alapp/constants.dart';

class Studentinfo extends StatelessWidget {
  

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
        leading: IconButton(
            onPressed: () {Navigator.pop(context);},
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu,),
            color: Colors.white,
          )
        ],
      ),
      body:Stack(children: <Widget>[ 
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
        ),],
      ),
      Container(
        margin: EdgeInsets.fromLTRB(50, MediaQuery.of(context).size.height/2-40, 0, 0),
        child:
        // Positioned(
        //   top: 500.0,
        //   left: 30.0,
        //   child: Container(
        //   height: 100,
        //   width: 500,
        //   color: Colors.green,
        //   // child: Text('container'),
        // ),),
        
      SingleChildScrollView(
        child: Stack(
          children:<Widget> [Positioned(
              // left: 50.0,
              // top: 350.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: <Widget>[
                  
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
                          ],)
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
      ),),
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

//   class MyList extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return new Column(
//       children: <Widget>[
//         new ListTile(
//           leading: new MyBullet(),
//           title: new Text('My first line'),
//         ),
//         new ListTile(
//           leading: new MyBullet(),
//           title: new Text('My second line'),
//         )
//       ],
//     );
//   }
// }
// class MyBullet extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//     height: 10.0,
//     width: 20.0,
//     decoration: new BoxDecoration(
//     color: Colors.black,
//     shape: BoxShape.circle,
//   ),
//   );
//   }
// }