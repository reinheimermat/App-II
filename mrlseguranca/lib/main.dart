import 'package:flutter/material.dart';
import 'package:mrlseguranca/Menu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Menu(),
    title: ('app'),
    theme: ThemeData(
    indicatorColor: Colors.white,
    primaryColor: Colors.amberAccent[700],
    ),
    ),
  );
}