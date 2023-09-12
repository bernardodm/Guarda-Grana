import 'package:flutter/material.dart';
import 'package:my_app/pages/wallet/widgets/custom_graphic.dart';
import 'package:my_app/pages/wallet/widgets/custom_income_and_expenses.dart';
import 'package:my_app/shared/widgets/custom_activity.dart';
import 'package:my_app/shared/widgets/custom_app_bar.dart';
import 'package:my_app/shared/widgets/custom_bottom_bar.dart';
import 'package:my_app/shared/widgets/custom_drawer.dart';
import 'package:my_app/shared/widgets/custom_flooating_button_add.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: const CustomAppBar(
        showValue: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomGraphic(),
            const CustomIncomeAndExpenses(),
            SizedBox(
              height: MediaQuery.of(context).size.height - 460,
              width: MediaQuery.of(context).size.width - 50,
              child: const Column(
                children: [
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
