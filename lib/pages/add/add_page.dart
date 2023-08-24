import 'package:flutter/material.dart';
import 'package:my_app/pages/add/widgets/custom_flooating_button_close.dart';
import 'package:my_app/pages/add/widgets/custom_form_add.dart';
import 'package:my_app/shared/widgets/custom_app_bar.dart';
import 'package:my_app/shared/widgets/custom_bottom_bar.dart';
import 'package:my_app/shared/widgets/custom_drawer.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});

  final fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(
        showValue: true,
        totalValue: 20,
      ),
      body: CustomFormAdd(),
      floatingActionButton: CustomFlooatingButtonClose(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
