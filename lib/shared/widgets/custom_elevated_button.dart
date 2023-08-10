import 'package:flutter/material.dart';
import 'package:my_app/shared/themes/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.buttonName, required this.buttonNavigator});

  final Widget buttonNavigator;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(CustomColors.color2),
        minimumSize: MaterialStateProperty.all(
          const Size(200, 50),
        ),
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
