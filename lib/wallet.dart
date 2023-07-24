import 'package:flutter/material.dart';
import 'package:my_app/shared/widgets/custom_activity.dart';
import 'package:my_app/shared/widgets/custom_app_bar.dart';
import 'package:my_app/shared/widgets/custom_bottom_bar.dart';
import 'package:my_app/shared/widgets/custom_flooating_button_add.dart';
import 'package:my_app/shared/widgets/custom_graphic.dart';

class Carteira extends StatelessWidget {
  const Carteira({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        userName: "Bernardo",
        showValue: true,
        totalValue: 20,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomGraphic(),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, bottom: 20, top: 10),
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 460,
              width: MediaQuery.of(context).size.width - 50,
              child: ListView(
                children: const [
                  CustomActivity(),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: const CustomFlooatingButtonAdd(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
