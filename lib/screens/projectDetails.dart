import 'package:alapp/screens/alt_home.dart';
import 'package:flutter/material.dart';
import 'package:alapp/global.dart';

class ProjectDetails extends StatefulWidget {

  final Map project;
  const ProjectDetails(this.project);
  @override
  State<StatefulWidget> createState() {
    return _ProjectDetailsState(this.project);
  }
  // _ProjectDetailsState createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  Map project;
  // Map project = {
  //     'title' : 'FitToFab',
  //     'subtitle' : 'Monitor health using Andriod app, Website and IoT',
  //     'logo' : 'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg',
  //     'des' : 'Flutter is taking longer than expected to report its views. Still trying. D/FlutterActivityAndFragmentDelegate( 5478): Attaching FlutterEngine to the Activity that owns this Fragment.      W/Activity( 5478): Slow Operation: Activity com.example.alapp/.MainActivity onCreate took 2421ms W/FlutterView( 5478): Tried to send viewport metrics from Android to Flutter but this FlutterView was not attached to a FlutterEngine.W/m.example.alap( 5478): Accessing hidden method Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J (light greylist, reflection)W/mexample.alap( 5478)Accessing hidden method Landroid/view/accessibility/AccessibilityRecord;->getSourceNodeId()J (light greylist, reflection)W/mexample.alap( 5478)Accessing hidden field Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray; (light greylist, reflection)W/mexample.alap( 5478)Accessing hidden method Landroid/util/LongArray;->get(I)J (light greylist, reflection)D/FlutterActivityAndFragmentDelegate( 5478): Executing Dart entrypoint: main, and sending initial route: /I/m.example.alap( 5478): ProcessProfilingInfo new_methods=495 is saved saved_to_disk=1 resolve_classes_delay=8000E/AccessibilityBridge( 5478): VirtualView node must not be the root node.D/FlutterView( 5478): Detaching from a FlutterEngine: io.flutter.embedding.engine.FlutterEngine@a3f1785Flutter is taking longer than expected to report its views.',
  //     'specs' : [
  //                     {'platform':'Android', 'langs': ['flutter', 'dart', 'react'],},
  //                     {'platform' : 'Website', 'langs': ['HTML', 'Bootstrap', 'JS' , 'Django'],},
  //                     {'platform' : 'IoT', 'langs': ['Pulse Sensor','vjhvjhv','gfhgf'],}
  //                   ] ,
  //     'ppt' : '', 
  //   };

  _ProjectDetailsState(this.project);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(project);
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildHeading(project),
            buildLogo(project),
            buildDescription(project),
            // buildLangUsed(project),
            buildPPT(project),
          ],
        ),
      ),
    );
  }

  Widget buildHeading(Map project){
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Text(
                project['title'],
                style: TextStyle(
                  fontSize: 28.0,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Container(
              child: Text(
                project['subtitle'],
                style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 1.5
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLogo(Map project){
    return Container(
      width: MediaQuery.of(context).size.width,
      
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              // width: MediaQuery.of(context).size.width-150,
              height: 150,
              // color: Colors.black38,
              child: Container(
                margin: EdgeInsets.only(
                  top:15.0,
                  left:20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: contentHeading('Domain')
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left:20,
                        top:5,
                      ),
                      child: Text(
                        project['domain'],
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right:20),
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                color: myGreen,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    project['logo'],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDescription(Map project){
    return Container(
      child: Container(
        margin: EdgeInsets.all(10.0),
        // height: 400.0,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left:15.0,top: 15.0),
                    child: contentHeading('About')
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
                    // height: 400.0,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                    ),
                    child: Text(
                      project['des'],
                      style: TextStyle(
                        fontSize: 14.0,
                        letterSpacing: 0.7
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black45,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
              
              decoration: BoxDecoration(
                color: Colors.white70,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: contentHeading('Specifications')
                  ),
                    Container(
                      color: Colors.white,
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: project['specs'].length,
                        itemBuilder: (ctx, index){
                          return Container(
                            
                            margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  project['specs'][index]['platform'],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Container(
                                  color: Colors.white70,
                                  height: 20,
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView.builder(
                                    itemCount: project['specs'][index]['langs'].length,
                                    itemBuilder: (ctx, i){
                                      return Row(
                                        children: <Widget>[
                                          SizedBox(width: 10,),
                                          drawDtot(),
                                          Text(
                                            project['specs'][index]['langs'][i],
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              letterSpacing: 1.0,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                    scrollDirection: Axis.horizontal,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        scrollDirection: Axis.vertical,
                        
                      ),
                      margin: EdgeInsets.only(
                        left:15,
                        top: 10,
                      ),
                    ),
                  ],
                ), 
              ),
            ],
        ),
      ),
    );

  }
  

  Widget buildPPT(Map project){
    return Container(
      // height: 200.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black12
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            // height: 30.0,
            
            margin: EdgeInsets.only(
              left:20.0,
              top:15.0
            ),
            child: contentHeading('Presentation')
          ),
          Container(
            // height: 200,
            // decoration: BoxDecoration(
            //   color: myGreen,
            //   borderRadius: BorderRadius.circular(10),
            // ),
            child: Text(
              'www.kjhsjf.com/jhkjafa/klfkjsdf.ppt',
              style:TextStyle(
                fontSize: 14.0,
                fontStyle: FontStyle.italic,
                color: Colors.blue,
              )
            ),
            margin: EdgeInsets.only(
              left:30,
              top: 10,
              bottom: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildScreenshots(Map project){
    return Container(

    );
  }
}



Widget drawDtot(){
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

Widget contentHeading(String heading){
  return Container(
                    // margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    
                    child: Text(
                      heading,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                  );
}