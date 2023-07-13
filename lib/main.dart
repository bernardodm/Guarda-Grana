import 'package:flutter/material.dart';
import 'package:my_app/addpage.dart';
import 'package:my_app/home.dart';
import 'package:my_app/login.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      routes: {'/addpage': (context) => Addpage()},
    ),
  );
}
