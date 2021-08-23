import 'package:flutter/material.dart';

class Maps extends StatefulWidget {
  const Maps({ Key? key }) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.amberAccent[700],
      ),
      body: Container(
        child: Image.asset("images/gmap.png"),
      ),
    );
  }
}