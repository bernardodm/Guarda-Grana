import 'package:flutter/material.dart';

class CustomIncomeAndExpenses extends StatelessWidget {
  const CustomIncomeAndExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 10),
      child: Row(
        children: const [
          Icon(
            Icons.arrow_upward,
            color: Colors.green,
          ),
          Text(
            'R\$100,00',
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
            ),
          ),
          Spacer(
            flex: 10,
          ),
          Icon(
            Icons.arrow_downward,
            color: Colors.red,
          ),
          Text(
            'R\$80,00',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
