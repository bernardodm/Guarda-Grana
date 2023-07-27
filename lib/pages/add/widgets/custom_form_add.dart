import 'package:flutter/material.dart';
import 'package:my_app/pages/home/home.dart';
import 'package:my_app/shared/widgets/custom_elevated_button.dart';

class CustomFormAdd extends StatelessWidget {
  const CustomFormAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 100),
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome:',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Valor: (se for despesa, coloque o valor negativo)',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Data: (Formato xx/yy/zzzz)',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Descrição:',
            ),
          ),
        ),
        const Center(
            child: CustomElevatedButton(
          buttonName: 'Salvar',
          buttonNavigator: Home(),
        )),
      ],
    );
  }
}
