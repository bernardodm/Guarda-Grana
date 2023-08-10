import 'package:flutter/material.dart';
import 'package:my_app/pages/home/widgets/custom_all_values.dart';
import 'package:my_app/shared/themes/colors.dart';
import 'package:my_app/shared/widgets/custom_activity.dart';
import 'package:my_app/shared/widgets/custom_app_bar.dart';
import 'package:my_app/shared/widgets/custom_bottom_bar.dart';
import 'package:my_app/shared/widgets/custom_drawer.dart';
import 'package:my_app/shared/widgets/custom_flooating_button_add.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: const CustomAppBar(),
      body: Column(
        children: const [
          CustomAllValues(),
          Center(
            child: Text(
              'Atividade recente',
              style: TextStyle(fontSize: 20, color: CustomColors.color2),
            ),
          ),
          CustomActivity(),
        ],
      ),
      floatingActionButton: const CustomFlooatingButtonAdd(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
