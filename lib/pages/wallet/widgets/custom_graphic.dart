import 'package:flutter/material.dart';
import 'package:my_app/shared/themes/colors.dart';

class CustomGraphic extends StatelessWidget {
  const CustomGraphic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        width: MediaQuery.of(context).size.width - 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColors.color1,
        ),
        child: const Text('Aqui vai ficar o gráfico'),
      ),
    );
  }
}
