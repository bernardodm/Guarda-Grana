import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/pages/login/create_login.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.showValue = false, this.totalValue});

  final bool showValue;
  final double? totalValue;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color5,
      toolbarHeight: preferredSize.height,
      actions: [
        if (showValue)
          Center(
            child: Text(
              totalValue.toString(),
            ),
          )
        else
          IconButton(
            color: Colors.white,
            iconSize: 30.0,
            icon: const Icon(Icons.remove_red_eye),
            onPressed: () {},
          ),
      ],
      leading: Builder(
        builder: (context) {
          return IconButton(
            color: Colors.white,
            iconSize: 30.0,
            icon: const Icon(Icons.person),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      title: Text("Olá, $userName"),
    );
  }

  @override
  Size get preferredSize => const Size(0, 60);
}
