import 'package:alapp/screens/TestBuilder.dart';
import 'package:alapp/screens/alt_home.dart';
import 'package:alapp/screens/alumni.dart';
import 'package:alapp/screens/chat_screens/chat.dart';
import 'package:alapp/screens/chat_screens/chatHome.dart';
import 'package:alapp/screens/editDetails.dart';
import 'package:alapp/screens/home.dart';
import 'package:alapp/screens/login.dart';
import 'package:alapp/screens/notice.dart';
import 'package:alapp/screens/projectDetails.dart';
import 'package:alapp/screens/projects.dart';
import 'package:alapp/screens/signup.dart';
import 'package:alapp/screens/temp.dart';
import 'package:alapp/screens/test.dart';
import 'package:alapp/widget/buildCardNotice.dart';
import 'package:flutter/material.dart';
import 'package:alapp/screens/students.dart';
import 'package:alapp/screens/studentInfo.dart';
import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {

        '/alumni' : (context)=> Alumni(),
        '/students' : (context) => Students(),
        '/studentInfo' : (context) => Studentinfo(),
        '/editDetails' : (context) => EditDetails(),
        '/chat' : (context) => ChatScreen(),
        '/chatHome' : (context) => ChatHome(),
        // '/0' : (context)=> Notice(),
        // '/demo' : (context) => Demo(),
        // '/projectDetails' : (context) => ProjectDetails(Map),

      },
      home: Projects(),
    );
  }
}

