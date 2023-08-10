import 'package:flutter/material.dart';
import 'package:my_app/pages/add/add_page.dart';
import 'package:my_app/shared/themes/colors.dart';

class CustomFlooatingButtonAdd extends StatelessWidget {
  const CustomFlooatingButtonAdd({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: CustomColors.color5,
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
