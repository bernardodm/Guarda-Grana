import 'package:flutter/material.dart';
import 'package:my_app/pages/home/widgets/custom_all_values.dart';
import 'package:my_app/shared/widgets/custom_app_bar.dart';
import 'package:my_app/shared/widgets/custom_bottom_bar.dart';
import 'package:my_app/shared/widgets/custom_drawer.dart';
import 'package:my_app/shared/widgets/custom_flooating_button_add.dart';

import '../../shared/themes/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(),
      body: Column(
        children: [
          CustomAllValues(),
          Text(
            'Atividade recente',
            style: TextStyle(fontSize: 20, color: CustomColors.color2),
          ),
        ],
      ),
      floatingActionButton: CustomFlooatingButtonAdd(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
