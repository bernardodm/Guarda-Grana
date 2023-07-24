import 'package:flutter/material.dart';

class CustomActivity extends StatelessWidget {
  const CustomActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(59, 0, 0, 0)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 10),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Comida Japonesa",
              ),
              Text(
                "R\$60,00",
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
