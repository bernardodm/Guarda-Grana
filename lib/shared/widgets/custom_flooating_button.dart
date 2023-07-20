import 'package:flutter/material.dart';
import 'package:my_app/pages/add/add_page.dart';

class CustomFlooatingButton extends StatelessWidget {
  const CustomFlooatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
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
    floatingActionButtonLocation:
    FloatingActionButtonLocation.centerDocked;
  }
}
