import 'package:flutter/material.dart';
import 'package:my_app/pages/add/widgets/custom_form_add.dart';

class CustomIncomeAndExpenses extends StatelessWidget {
  const CustomIncomeAndExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 10),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_upward,
            color: Colors.green,
          ),
          Text(
            'R\$ ${positiveValue.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
            ),
          ),
          const Spacer(
            flex: 10,
          ),
          const Icon(
            Icons.arrow_downward,
            color: Colors.red,
          ),
          Text(
            'R\$ ${negativeValue.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
