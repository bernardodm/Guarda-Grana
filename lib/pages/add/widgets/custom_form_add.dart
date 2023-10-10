import 'package:flutter/material.dart';
import 'package:my_app/shared/themes/colors.dart';

List<String> activityName = [];
List<String> activityDescription = [];
List<double> activityValue = [];
List<double> listPositive = [];
List<double> listNegative = [];
List<double> listTotal = [];

double totalValue = 0;
double positiveValue = 0;
double negativeValue = 0;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 100),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Nome'),
                  validator: (v) => v!.isEmpty ? 'Digite um nome.' : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextFormField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(labelText: 'Descrição'),
                  validator: (v) => v!.isEmpty ? 'Digite uma descrição.' : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: TextFormField(
                  controller: _valueController,
                  decoration: const InputDecoration(labelText: 'Valor'),
                  keyboardType: TextInputType.number,
                  validator: (v) {
                    if (v!.isEmpty) return 'Digite um valor.';
                    final value = double.tryParse(v);
                    if (value == null) return 'Valor inválido.';
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(CustomColors.color5)),
                onPressed: () {
                  double valueForm = double.parse(_valueController.text);

                  if (_formKey.currentState!.validate()) {
                    setState(
                      () {
                        activityName.add(_nameController.text);
                        activityDescription.add(_descriptionController.text);
                        activityValue.add(valueForm);
                        totalValue += valueForm;
                        listTotal.add(totalValue);
                        if (valueForm > 0) {
                          positiveValue += valueForm;
                          listPositive.add(valueForm);
                        }
                        if (valueForm < 0) {
                          negativeValue += valueForm;
                          listNegative.add(valueForm);
                        }
                      },
                    );
                    _nameController.clear();
                    _descriptionController.clear();
                    _valueController.clear();
                  }
                },
                child: const Text('Salvar'),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
