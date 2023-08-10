import 'package:flutter/material.dart';
import 'package:my_app/shared/models/activity.dart';
import 'package:my_app/shared/themes/colors.dart';

class CustomFormAdd extends StatefulWidget {
  const CustomFormAdd({super.key});

  @override
  State<CustomFormAdd> createState() => _CustomFormAddState();
}

class _CustomFormAddState extends State<CustomFormAdd> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _valueController = TextEditingController();
  final _dateController = TextEditingController();

  void _saveForm() {
    if (_formKey.currentState!.validate()) {
      final nameForm = _nameController.text;
      final valueForm = double.parse(_valueController.text);
      final descriptionForm = _descriptionController.text;
      final dateForm = _dateController.text;

      final newActivity = Activity(
          nameForm: nameForm,
          valueForm: valueForm,
          dateForm: dateForm,
          descriptionForm: descriptionForm);

      Navigator.pop(context, newActivity);
    }
  }

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
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome',
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
              controller: _valueController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor: (se for despesa, coloque o valor negativo)',
              ),
              keyboardType: TextInputType.number,
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
              controller: _dateController,
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
              controller: _descriptionController,
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
                backgroundColor:
                    const MaterialStatePropertyAll(CustomColors.color5),
                minimumSize: MaterialStateProperty.all(
                  const Size(200, 50),
                ),
              ),
              onPressed: _saveForm,
              child: const Text('Salvar'),
            ),
          ),
        ],
      ),
    );
  }
}
