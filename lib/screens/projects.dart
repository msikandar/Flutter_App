import 'package:alapp/screens/projectDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:alapp/global.dart';
import 'package:alapp/data.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  String dropdownValue = 'All';
  // void reverseOrder(){
  //   setState(() {
  //     items = items.reversed.toList();
  //   });
  // }
  List<String> categories = [
    'Android',
    'Machine Learning',
    'Web Development',
    'IoT'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: myGreen,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Categories : ',
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 1,
                        ),
                      ),
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
                        items: <String>[
                          'All',
                          'Android',
                          'Machine Learning',
                          'Web Development',
                          'IoT'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            child: Text(value),
                            value: value,
                          );
                        }).toList(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                            // for (var i = 0; i < categoryHeadingList.length; i++) {
                            //   if(categoryHeadingList[i] == newValue){
                            //     categoryIndex = i;
                            //   }
                            // }
                            // currentProjectGroup = categoryHeadingList[categoryIndex];
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: myGreen,
              height: 5.0,
              thickness: 1.0,
            ),
            Expanded(
              child: dropdownValue == 'All'
                  ? SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          ExpansionTile(initiallyExpanded: true,
                            title: categoryHeading(categories[0]),
                            children: <Widget>[
                              Container(
                              height: MediaQuery.of(context).size.height/2,
                              // color: myGreen,
                              child: ListView.builder(
                                itemCount: items.length,
                                itemBuilder: (ctx, i) {
                                  return buildItem(items[i], categories[0]);
                                },
                              ),
                            ),
                            ],
                          ),
                          ExpansionTile(
                            title: categoryHeading(categories[1]),
                          ),
                          ExpansionTile(
                            title: categoryHeading(categories[2]),
                          ),
                          ExpansionTile(
                            title: categoryHeading(categories[3]),
                            children: <Widget>[
                              Container(
                              height: 200,
                              color: myGreen,
                              child: ListView.builder(
                                itemCount: items.length,
                                itemBuilder: (ctx, i) {
                                  return buildItem(items[i], categories[3]);
                                },
                              ),
                            ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        // mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          categoryHeading(dropdownValue),
                          Container(
                            height: MediaQuery.of(context).size.height - 180,
                            child: ListView.builder(
                              itemCount: items.length,
                              itemBuilder: (ctx, i) {
                                return buildItem(items[i], dropdownValue);
                                // items[i]['category'] == categories[index]
                                // ? buildItem(items[i], categories[index])
                                // :Container(
                                //   child: Center(
                                //     child:Text('${items[i-1]}'),
                                //   ),
                                // );
                              },
                            ),
                          )
                        ],
                      )),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: FlatButton(
      //     onPressed: reverseOrder,
      //     child: Text('Reverse Order'),
      //   ),
      // ),
    );
  }

  Widget buildItem(Map project, String category) {
    return TestProxy(
        key: ValueKey(project),
        child:
            // dropdownValue =='All'
            // ?
            Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              category == project['category']
                  ? Container(
                      height: 100,
                      child: buildProjectListViews(context, project),
                    )
                  : Container(),
              // buildProjectListViews(context,project),
              // Divider(),
            ],
          ),
        )
        // : project['category'] == dropdownValue
        // ? Container(
        //   child: Column(
        //     children: <Widget>[
        //       // project['displayHeading']
        //       //     ? categoryHeading(project['category'])
        //       //     :Container(),
        //       // buildProjectListViews(context,project),
        //       // Divider(
        //       //   height: 50,
        //       //   color: Colors.red,
        //       // ),
        //     ],
        //   ),
        // )
        // :Container(),
        );
  }

//   Widget buildExpansionTile(String category){
//     return ExpansionTile(
//       title: categoryHeading(''
//         // project['category']
//       ),
//       children: <Widget>[
//         ListView(
//                 children: items.map(buildItem).toList(),
//         ),
//         // buildProjectListViews(context, project),
//       ],
//     );
//   }
}

Widget categoryHeading(String heading) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        child: Text(
          heading,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: myGreen,
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      ),
      Divider(
        color: myGreen,
        height: 10.0,
        thickness: 1.0,
        endIndent: 100,
      ),
    ],
  );
}

Widget buildProjectListViews(BuildContext context, Map project) {
  return ListTile(
    isThreeLine: false,
    onLongPress: () {},
    onTap: () {
      goToProjectDescription(context, project);
    },
    leading: Icon(
      Icons.work,
      color: myGreen,
      size: 20,
    ),
    title: Text(
      '${project['title']}',
      style: TextStyle(color: Colors.black, fontSize: 16.0, letterSpacing: 1.0),
    ),
    subtitle: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            '${project['subtitle']}',
            style: TextStyle(
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            // color: Colors.teal,
            height: 15,
            child: ListView.builder(
              itemCount: project['specs'].length,
              itemBuilder: (ctx, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: <Widget>[
                      drawDtot(),
                      Text(
                        project['specs'][index]['platform'],
                        style: TextStyle(
                          fontSize: 12.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget drawDtot() {
  return Container(
    height: 5.0,
    width: 5.0,
    decoration: BoxDecoration(
      color: Colors.black38,
      borderRadius: BorderRadius.circular(50),
    ),
    margin: EdgeInsets.only(right: 5.0),
  );
}

void goToProjectDescription(BuildContext context, Map project) {
  print(project);
  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProjectDetails(project)));
}

class TestProxy extends SingleChildRenderObjectWidget {
  TestProxy({Key key, Widget child}) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    print('createRenderObject $key');
    return RenderProxyBox();
  }

  void updateRenderObject(BuildContext context, RenderObject renderObject) {
    print('updateRenderObject $key');
  }
}

// ListView.builder(

//                       itemCount: categories.length,
//                       itemBuilder: (context, index) {
//                         return Container(
//                             child: Column(
//                           children: <Widget>[
//                             categoryHeading(categories[index]),
//                             Container(
//                               height: 200,
//                               color: myGreen,
//                               child: ListView.builder(
//                                 itemCount: items.length,
//                                 itemBuilder: (ctx, i) {
//                                   return buildItem(items[i], categories[index]);
//                                   // items[i]['category'] == categories[index]
//                                   // ? buildItem(items[i], categories[index])
//                                   // :Container(
//                                   //   child: Center(
//                                   //     child:Text('${items[i-1]}'),
//                                   //   ),
//                                   // );
//                                 },
//                               ),
//                             )
//                           ],
//                         ));
//                       },
//                     )
