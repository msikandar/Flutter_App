import 'package:alapp/global.dart';
import 'package:alapp/screens/temp.dart';
import 'package:flutter/material.dart';
import 'package:alapp/widget/buildCard.dart';
import 'package:alapp/constants.dart';

class Alumni extends StatefulWidget {
  @override
  _AlumniState createState() => _AlumniState();
}

class _AlumniState extends State<Alumni> {
  String dropdownValue = '2018';
  List batch = ['2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015', '2016', '2017', '2018',];
  List beginBatch = ['2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015', '2016', '2017', '2018',];
  String link = 'unknown';

  gotoNextpage( BuildContext context, String batch){
    print('sending to next page : {$batch}');
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Demo(batch)));
    // Navigator.pushNamed(context, '/demo',arguments: {batch:batch});
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
                'Our Alumni',
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
                          '24',
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
                          'ALUMNI WE HAVE',
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
                        
                        padding: EdgeInsets.fromLTRB(25.0, 50.0, 5.0, 25.0),
                        child: Text(
                          '621',
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
          SizedBox(height: 30.0,),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'OUR ALUMNI',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    letterSpacing: 1.0
                  ),
                ),
                // SizedBox(width: 30.0),
                // DropdownButton(
                //   value: dropdownValue,
                //   icon: Icon(Icons.list),
                //   iconSize: 20.0,
                //   elevation: 16,
                  
                //   style: TextStyle(
                //     color: Colors.blue[400],
                //     letterSpacing: 2.0,
                //     fontSize: 16.0,
                //     fontWeight: FontWeight.bold,

                //   ),
                //   underline: Container(
                //     height: 1.0,
                //     color: Colors.orangeAccent[100],
                //   ),
                //   items: <String>['2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015', '2016', '2017', '2018',].map<DropdownMenuItem<String>>((String value){
                //     return DropdownMenuItem<String>(
                //       child: Text(value),
                //       value: value,
                //     );
                //   }).toList(),
                //   onChanged: (String newValue){
                //     setState(() {
                //       dropdownValue = newValue;
                //     });
                //   },
                //   ),
                  // SizedBox(
                  //   width: 2.0,
                  // ),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Expanded(
            // height: 350,
            child:ListView(
          children: <Widget>[
            buildCardNotice(
              beginBatch[0],
              batch[0],
              1,
              link,
            ),
            buildCardNotice(
              beginBatch[1],
              batch[1],
              2,
              link,
            ),
            buildCardNotice(
              beginBatch[2],
              batch[2],
              3,
              link,
            ),
            buildCardNotice(
              beginBatch[3],
              batch[3],
              4,
              link,
            ),
            buildCardNotice(
              beginBatch[4],
              batch[4],
              5,
              link,
            ),
            buildCardNotice(
              beginBatch[5],
              batch[5],
              6,
              link[4],
            ),
            buildCardNotice(
              beginBatch[6],
              batch[6],
              7,
              link,
            ),
            buildCardNotice(
              beginBatch[7],
              batch[7],
              8,
              link,
            ),
            buildCardNotice(
              beginBatch[8],
              batch[8],
              9,
              link,
            ),
            buildCardNotice(
              beginBatch[9],
              batch[9],
              10,
              link,
            ),
            buildCardNotice(
              beginBatch[10],
              batch[10],
              11,
              link,
            ),
            buildCardNotice(
              beginBatch[11],
              batch[11],
              12,
              link,
            ),
            buildCardNotice(
              beginBatch[12],
              batch[12],
              13,
              link,
            ),
            buildCardNotice(
              beginBatch[13],
              batch[13],
              14,
              link,
            ),
            GestureDetector(
              onTap: (){gotoNextpage(context, batch[14]);},
              child: buildCardNotice(
              beginBatch[14],
              batch[14],
              15,
              link,
            ),
            ),
          ],
        )
          ),

        ],

      ),//
      ),
    );
  }


  // Widget _buildCard(String name, String status, int cardIndex) {
  //   return Card( 
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(10.0)
  //     ),
  //     elevation: 7.0,
  //     child: Column(
  //       children: <Widget>[
  //         SizedBox(height: 12.0),
  //         Stack(
  //           children: <Widget>[
  //             Container(
  //               height: 60.0,
  //               width: 60.0,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(30.0),
  //                 color: Colors.green,
  //                 image: DecorationImage(
  //                   image: NetworkImage(
  //                     'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
  //                   )
  //                 )
  //               ),
  //             ),
  //             Container(
  //               margin: EdgeInsets.only(left: 40.0),
  //               height: 20.0,
  //               width: 20.0,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(30.0),
  //                 color: status == 'Away' ? Colors.amber : Colors.green,
  //                 border: Border.all(
  //                   color: Colors.white,
  //                   style: BorderStyle.solid,
  //                   width: 2.0
  //                 )
  //               ),
  //             )
  //           ]),
  //             SizedBox(height: 8.0),
  //             Text(
  //               name,
  //               style: TextStyle(
  //                 fontFamily: 'Quicksand',
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 15.0,
  //               ),
  //             ),
  //             SizedBox(height: 5.0),
  //             Text(
  //               status,
  //               style: TextStyle(
  //                 fontFamily: 'Quicksand',
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: 12.0,
  //                 color: Colors.grey
  //               ),
  //             ),
  //             SizedBox(height: 15.0),
  //             Expanded(
  //               child: Container(
  //                 width: 175.0,
  //                 decoration: BoxDecoration(
  //                   color: status == 'Away' ? Colors.grey: Colors.blue[400],
  //                   borderRadius: BorderRadius.only
  //                   (
  //                     bottomLeft: Radius.circular(10.0),
  //                   bottomRight: Radius.circular(10.0)
  //                 ),
  //               ),
  //               child: Center(
  //                 child: Text('Request',
  //                 style: TextStyle(
  //                   color: Colors.white, fontFamily: 'Quicksand'
  //                 ),
  //               ),
  //             )
  //             )
  //             )
  //           ],
  //         ),
  //     margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
  
  //  );
  // }

  Widget buildCardNotice(String beginbatch, String batch, int index, String link){
  return Card(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 7.0,
      // color: Colors.green,
      // child: GestureDetector(
      //   onTap: (){Navigator.pushNamed(context, '/demo',arguments: {batch:batch});},
      //   // () async{
      //   //   final result = await OpenFile.open(link);
      //   //   print(result);
      //   // },
        child:Container(
          height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: myGreen,
          boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                      color: Colors.blue[400].withOpacity(0.5),
                    )
                  ]
        ),
            // height: 100.0,
            width: MediaQuery.of(context).size.width,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                //  Text(heading,
                //   style: additionalDetailStyle,),
                //  Text(_openResult),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     Text('Batch ',style: batchDetailsStyle,),
                     Text(index.toString(),style: batchDetailsStyle,),
                   ],
                 ),
                 
                 Row(
                   children: <Widget>[
                     Text('Session :',style: batchDetailsStyle,),
                     Text(beginbatch,style: batchDetailsStyle,),
                     Text(' - ',style: batchDetailsStyle,),
                     Text(batch,style: batchDetailsStyle,),
                   ],
                 ),
              ],
            ),
            
          ),
      
      margin: EdgeInsets.symmetric( vertical: 6.0, horizontal: 20.0),
    
    );
}
}




