import 'package:flutter/material.dart';
import 'package:my_app/pages/login/start_page.dart';

const color1 = Color(0xFFA0E6C0);
const color2 = Color(0xFF2C4035);
const color3 = Color(0xFFB1FFD5);
const color4 = Color(0xFF85BFA0);
const color5 = Color(0xFF59806B);

void main() {
  runApp(
    const MaterialApp(
      home: StartPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
