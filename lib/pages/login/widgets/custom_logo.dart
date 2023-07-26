import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(500),
          ),
        ),
        height: 250,
        width: MediaQuery.of(context).size.width - 300,
        child: const Center(
          child: Text("Logo"),
        ),
      ),
    );
  }
}
