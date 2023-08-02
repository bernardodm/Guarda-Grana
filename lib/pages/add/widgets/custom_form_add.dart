import 'package:flutter/material.dart';

final activity = <String>[];

class CustomFormAdd extends StatefulWidget {
  const CustomFormAdd({super.key});

  @override
  State<CustomFormAdd> createState() => _CustomFormAddState();
}

class _CustomFormAddState extends State<CustomFormAdd> {
  final TextEditingController formNameController = TextEditingController();
  final TextEditingController formValueController = TextEditingController();
  final TextEditingController formDataController = TextEditingController();
  final TextEditingController formDescriptionController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 100),
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              controller: formNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome:',
              ),
              validator: (value) {
                if (value == '') {
                  return 'Campo obrigatório!';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              controller: formValueController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor: (se for despesa, coloque o valor negativo)',
              ),
              validator: (value) {
                if (value == '') {
                  return 'Campo obrigatório!';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              controller: formDataController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Data: (Formato xx/yy/zzzz)',
              ),
              validator: (value) {
                if (value == '') {
                  return 'Campo obrigatório!';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              controller: formDescriptionController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Descrição:',
              ),
              validator: (value) {
                if (value == '') {
                  return 'Campo obrigatório!';
                }
                return null;
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Colors.green),
                minimumSize: MaterialStateProperty.all(
                  const Size(200, 50),
                ),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  activity.add(formNameController.text);
                  formNameController.clear();
                }
              },
              child: const Text('Salvar'),
            ),
          ),
        ],
      ),
    );
  }
}
