import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);


class Test extends StatelessWidget {
final Map lst =  {'specs' : [
                      {'platform':'Android', 'langs': ['flutter', 'dart', 'react'],},
                      {'platform' : 'Website', 'langs': ['HTML', 'Bootstrap', 'JS' , 'Django'],},
                      {'platform' : 'IoT', 'langs': ['Pulse Sensor','vjhvjhv','gfhgf'],}
                    ] 
                  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
        // height: 400,
        width: 400,
        child: ListView.builder(
          itemCount: lst['specs'].length,
          itemBuilder: (ctx,index){
            return Container(
              child: Column(
                children: [
                  Text(
                    lst['specs'][index]['platform'].toString(),
                  ),
                  SizedBox(height: 10,),
                  // Text(
                  //   lst['specs'][index]['langs'][index].toString(),
                  // ),
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: lst['specs'][index]['langs'].length,
                      itemBuilder: (ctx, i){
                        return Row(
                          children: <Widget>[
                            Text(
                              lst['specs'][index]['langs'][i].toString()
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
        ),
    ),
      ),
    );
  }
}
