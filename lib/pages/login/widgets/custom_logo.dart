import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 250,
        width: MediaQuery.of(context).size.width - 300,
        child: const Center(child: FlutterLogo()),
      ),
    );
  }
}
