import 'package:flutter/material.dart';
import 'package:my_app/shared/themes/colors.dart';

class CustomAllValues extends StatelessWidget {
  const CustomAllValues({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            color: CustomColors.color5,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 60,
                    ),
                    child: Text(
                      'Meu Saldo:',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "R\$100,00",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.green,
                        size: 30,
                      ),
                      Text(
                        "R\$50,00",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.red,
                        size: 30,
                      ),
                      Text(
                        "R\$20,00",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
