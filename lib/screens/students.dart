import 'package:alapp/global.dart';
import 'package:flutter/material.dart';
import 'package:alapp/widget/buildCard.dart';
import 'package:alapp/widget/buildCardStudents.dart';

class Students extends StatefulWidget {
  @override
  _StudentsState createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  String dropdownValue = 'Final Year';

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
      body:Container(
        child: Column(
        // shrinkWrap: true,
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              alignment: Alignment(0.0, -0.40),
              height: 100.0,
              color: Colors.white,
              child: Text(
                'Our Students',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 2.0
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                      color: myGreen.withOpacity(0.5),
                    )
                  ]
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                        child: Text(
                          'TOTAL BATCHES',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25.0),
                        
                        padding: EdgeInsets.fromLTRB(25.0, 50.0, 5.0, 25.0),
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   width: 50.0,
                  // ),
                  Stack(
                    children: <Widget>[
                      Container(
                        
                        padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                        child: Text(
                          'TOATAL STUDENTS',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        
                        padding: EdgeInsets.fromLTRB(35.0, 50.0, 5.0, 25.0),
                        child: Text(
                          '95',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],

          ),
          SizedBox(height: 15.0,),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'OUR STUDENTS',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    letterSpacing: 1.0
                  ),
                ),
                SizedBox(width: 30.0),
                DropdownButton(
                  value: dropdownValue,
                  // icon: Icon(Icons.list),
                  // iconSize: 20.0,
                  // elevation: 16,
                  
                  style: TextStyle(
                    color: myGreen,
                    letterSpacing: 2.0,
                    fontSize: 16.0,
                  ),
                  underline: Container(
                    height: 1.0,
                    color: myGreen,
                  ),
                  items: <String>['First Year','Pre Final Year', 'Final Year'].map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (String newValue){
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  ),
                  // SizedBox(
                  //   width: 2.0,
                  // ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Expanded(
            // height: 350.0,
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
                  GestureDetector(child:buildCardStudents("Tom", "Available", 1), onTap:(){ Navigator.pushNamed(context, '/studentInfo');},),
                  GestureDetector(child:buildCardStudents("Tom", "Available", 2), onTap:(){ Navigator.pushNamed(context, '/studentInfo');},),
                  GestureDetector(child:buildCardStudents("Tom", "Away", 3), onTap:(){ Navigator.pushNamed(context, '/studentInfo');},),
                  GestureDetector(child:buildCardStudents("Tom", "Available", 4), onTap:(){ Navigator.pushNamed(context, '/studentInfo');},),
                  GestureDetector(child:buildCardStudents("Tom", "Available", 5), onTap:(){ Navigator.pushNamed(context, '/studentInfo');},),
                  GestureDetector(child:buildCardStudents("Tom", "Away", 6), onTap:(){ Navigator.pushNamed(context, '/studentInfo');},),
                  
                  
                ],
              ),
              ),
            ],
          ),
          ),

        ],

      ),//
      ),
    );
  }




}
