import 'package:flutter/material.dart';
import 'package:my_app/pages/home/home.dart';
import 'package:my_app/pages/wallet/wallet.dart';
import 'package:my_app/shared/themes/colors.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: CustomColors.color5,
      height: 60,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            color: Colors.white,
            iconSize: 30.0,
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
          ),
          IconButton(
            color: Colors.white,
            iconSize: 30.0,
            icon: const Icon(Icons.wallet),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Wallet(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
