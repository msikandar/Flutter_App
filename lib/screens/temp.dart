import 'package:alapp/global.dart';
import 'package:alapp/screens/alumni.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:alapp/constants.dart';

class Demo extends StatefulWidget {

  final String batch;

  const Demo(this.batch);
  @override
  State<StatefulWidget> createState() {
    return DemoState(this.batch);
  }
  // _DemoState createState() => _DemoState(this.batch);
}

class DemoState extends State<Demo> {
  int _current = 0;
  String dropdownValue = '2018';
  String batch ;
  
  int batchIndex;
  // String selectedBatch = widget.batch;
  static List batch2015 = [
    {"name": "Hitesh Kumar Pandey", "yop": "2015", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager' },
    {"name": "mohit", "yop": "2015", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "ankit", "yop": "2015", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "suman", "yop": "2015", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "Ishan", "yop": "2015", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager' },
    {"name": "mohit", "yop": "2015", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "ankit", "yop": "2015", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "suman", "yop": "2015", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "suman", "yop": "2015", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
  ];
   static List batch2016 = [
    {"name": "Niranjan Naik", "yop": "2016", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager' },
    {"name": "mohit", "yop": "2016", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "ankit", "yop": "2016", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "suman", "yop": "2016", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "Ishan", "yop": "2016", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager' },
    {"name": "mohit", "yop": "2016", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "ankit", "yop": "2016", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "suman", "yop": "2016", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "suman", "yop": "2016", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
  ];
   static List batch2017 = [
    {"name": "Anuj Pradhan", "yop": "2017", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager' },
    {"name": "mohit", "yop": "2017", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "ankit", "yop": "2017", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "suman", "yop": "2017", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "Ishan", "yop": "2017", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager' },
    {"name": "mohit", "yop": "2017", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "ankit", "yop": "2017", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "suman", "yop": "2017", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
    {"name": "suman", "yop": "2017", "email":'example@email.com', 'town':'BBSR', 'gender':'male', 'phone':'7548215648', 'company':'Tata Consultancy', 'des': 'Project Manager'  },
  ];
  List datasets = [batch2015, batch2016, batch2017];
  DemoState(this.batch);
  
  // _DemoState

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectBatch();
    // dataset = 'batch{$batch}';
    
  }

  selectBatch(){
    print('batch = {$batch}');
    String temp;
    int count = -1;
    for( var i in datasets) {
    count += 1;
    for(var j in i){
       temp = j['yop'];
       print('temp = {$temp}');
      if(temp == batch){
       batchIndex = count;
        break;
      }
      break;
    }
    
    print('--------------------------------------------------------');
    }
    print('batch index = {$batchIndex}');
  }
  
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
            icon: Icon(Icons.search,),
            color: Colors.white,
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
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
        // Container(
        //   // height: 300,
        //   // width: 300,
        //   decoration: BoxDecoration(
        //     color: Colors.blueAccent,
        //     borderRadius: BorderRadius.circular(20),
        //     border: Border.all(
        //       // color: Colors.black,
        //       // width: 3,
        //     ),
        //     boxShadow: [
        //               BoxShadow(
        //                 color: Colors.blueAccent.withOpacity(1),
        //                 offset: Offset(0, 5),
        //                 blurRadius: 25,
        //               ),
        //             ],
        //   ),
          
        //   margin: EdgeInsets.fromLTRB(20, 20, 20, MediaQuery.of(context).size.height/2),
        // ),
        Stack(
          
          children: <Widget>[
            Positioned(
              top: 10.0,
              right: 15.0,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/chat'),
                              child: Container(
                  height: 80,
                  width: 80,
                  // color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly
                      ,
                      children: <Widget>[
                        Icon(Icons.message,
                        color: Colors.white,),

                        Text('Connectt',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              // child: Row(
              //   children: <Widget>[
              //     Text('Batch : ',
              //       style: studentemailStyle.copyWith(color: Colors.white),
              //     ),
              //     DropdownButton(
              //     value: batch,
              //     icon: Icon(Icons.list,color: Colors.white60,),
              //     iconSize: 20.0,
              //     elevation: 16,
              //     autofocus: true,
              //     focusColor: Colors.grey,
              //     isDense: true,
                  
              //     style: TextStyle(
              //       color: Colors.orangeAccent,
              //       letterSpacing: 2.0,
              //       fontSize: 16.0,
              //       // fontWeight: FontWeight.bold,

              //     ),
              //     underline: Container(
              //       height: 1.0,
              //       color: Colors.orangeAccent[100],
              //     ),
              //     items: <String>['2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015', '2016', '2017', '2018',].map<DropdownMenuItem<String>>((String value){
              //       return DropdownMenuItem<String>(
              //         child: Text(value),
              //         value: value,
              //       );
              //     }).toList(),
              //     onChanged: (String newValue){
              //       setState(() {
              //         batch = newValue;
              //         selectBatch();
              //       });
              //     },
              //     ),
              //   ],
              // ),
            ),
          ],
        ),
        Stack(children: <Widget>[
          Positioned(
            top: 70,
            // left: 10,
            child: Column(children: <Widget>[
            Container(
              height: 150.0,
              width: 400.0,
              child: 
            CarouselSlider(
              height: 150.0,
              
              initialPage: 0,
              autoPlay: false,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index){
                setState(() {
                  _current = index;
                });
              },
              items: <Widget>[
                createContainer(),
                createContainer(),
                createContainer(),
                createContainer(),
                createContainer(),
                createContainer(),
                createContainer(),
                createContainer(),
                createContainer(),

              ],
            ),
            ),
            SizedBox(height: 25.0,),
            Container(
              
              width: MediaQuery.of(context).size.width,
              // color: Colors.white,
              child: Center(
                child: createName(datasets[batchIndex][_current]['name']),
              ),
            ),
            ],),
            ),
        ],),
          ],),
            SizedBox(
              height: 5.0,
            ),
            Stack(children: <Widget>[
            Positioned(
              top: MediaQuery.of(context).size.height/2-50,
              // left: 20,
              child: Container(
              margin: EdgeInsets.symmetric(
                vertical:20.0,
                horizontal: 50.0,
              ),
              height: 300.0,
              width: 400.0,
              // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                  // createRow('Name', alumData[_current]['name']),
                  createRow('Year of Passing', datasets[batchIndex][_current]['yop']),
                  createRow('Hometown', datasets[batchIndex][_current]['town']),
                  createRow('Gender', datasets[batchIndex][_current]['gender']),
                  createRow('Email', datasets[batchIndex][_current]['email']),
                  createRow('Phone', datasets[batchIndex][_current]['phone']),
                  createRow('Company', datasets[batchIndex][_current]['company']),
                  createRow('Desingation', datasets[batchIndex][_current]['des']),
                  

                  // Text(alumData[_current]['name']),
                  // Text(alumData[_current]['yop']),
                  // Text(alumData[_current]['email']),
                  // Text(alumData[_current]['town']),
                  // Text(alumData[_current]['gender']),
                  // Text(alumData[_current]['company']),
                  // Text(alumData[_current]['des']),
                  // Text(alumData[_current]['phone']),
                ],
              ),
            ),
        ),
            ],),
        
      ],
      ),
    );
  }

  Widget createContainer(){
    return Container(
      height: 150.0,
      width: 150.0,
      decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.orange,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                    )
                  )
                ),
      
    );
  }

  Widget createRow(String leading, String detail){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(leading,style: additionalHeadingStyle,),
        Text(' : '),
        Text(detail,style: additionalDetailStyle,),
      ],
    );
  }

  Widget createName(String detail){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        Text(detail,style: studentNameStyle,),
      ],
    );
  }

}

  

// carousel_slider:
class MyClipper extends CustomClipper<Path>{


  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-80);
    var controllPoint = Offset(0, size.height);
    var endPoint = Offset(size.width/3, size.height);
    path.quadraticBezierTo(controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}

