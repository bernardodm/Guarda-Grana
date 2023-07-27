import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/pages/home/widgets/custom_all_values.dart';
import 'package:my_app/shared/widgets/custom_activity.dart';
import 'package:my_app/shared/widgets/custom_app_bar.dart';
import 'package:my_app/shared/widgets/custom_bottom_bar.dart';
import 'package:my_app/shared/widgets/custom_flooating_button_add.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const CustomAllValues(),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: color1,
              ),
              height: MediaQuery.of(context).size.height - 352,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: const [
                  CustomActivity(),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: const CustomFlooatingButtonAdd(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
