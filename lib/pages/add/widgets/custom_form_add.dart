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
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final descriptionController = TextEditingController();

  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 100),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo Obrigatório!';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Descrição'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo Obrigatório!';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: valueController,
                decoration: const InputDecoration(labelText: 'Valor'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo Obrigatório!';
                  } else if (!RegExp(r'^\d+(\.\d+)?$').hasMatch(value)) {
                    return 'Apenas números devem ser digitados';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(CustomColors.color5)),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(
                      () {
                        double valueForm = double.parse(valueController.text);

                        activityName.add(nameController.text);
                        activityDescription.add(descriptionController.text);
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
                    nameController.clear();
                    descriptionController.clear();
                    valueController.clear();
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
