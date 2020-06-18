import 'package:flutter/material.dart';

class EditDetails extends StatefulWidget {
  @override
  _EditDetailsState createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
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
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {Navigator.pop(context);},
            icon: Icon(Icons.arrow_back),
            color: Colors.grey,
            
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu,),
            color: Colors.grey,
          )
        ],
      ),
      body: Center(
      child: Text(
        'Edit Details'
      ),
      ),
    );
  }
}