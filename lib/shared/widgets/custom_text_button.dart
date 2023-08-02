import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, required this.buttonName, required this.buttonNavigator});

  final Widget buttonNavigator;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(color2),
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => buttonNavigator,
          ),
        );
      },
      child: Text(buttonName),
    );
  }
}
