import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/pages/add/add_page.dart';

class CustomFlooatingButtonAdd extends StatelessWidget {
  const CustomFlooatingButtonAdd({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: color5,
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AddPage(),
          ),
        );
      },
      elevation: 5.0,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
