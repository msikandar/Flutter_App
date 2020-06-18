import 'dart:async';
import 'package:alapp/screens/home.dart';
import 'package:alapp/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'notice.dart';
import 'contact.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  int _page = 2;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: 
      Hero(
        tag: 'bottomNavBar',
        child:
         CurvedNavigationBar(
          index: 2,
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
              else if( _page == 1){
                Timer(Duration(milliseconds: 200), (){Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));});}
              

            });
          },
        ),),
        body: Center(child: Text("Contact"),),
    );
  }
}