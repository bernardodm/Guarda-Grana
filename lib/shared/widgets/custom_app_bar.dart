import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.userName,
      this.showValue = false,
      this.totalValue});

  final String userName;
  final bool showValue;
  final double? totalValue;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      leading: IconButton(
        color: Colors.white,
        iconSize: 30.0,
        icon: const Icon(Icons.person),
        onPressed: () {},
      ),
      title: Text("Olá, $userName"),
    );
  }

  @override
  Size get preferredSize => const Size(0, 75);
}
