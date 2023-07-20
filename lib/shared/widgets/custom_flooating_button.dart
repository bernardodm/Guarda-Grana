import 'package:flutter/material.dart';
import 'package:my_app/pages/add/add_page.dart';
import 'package:my_app/wallet.dart';

class CustomFlooatingButton extends StatelessWidget {
  const CustomFlooatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AddPage(),
          ),
        );
      },
      elevation: 5.0,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
    BottomAppBar(
      color: Colors.blue,
      height: 75,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            color: Colors.white,
            iconSize: 30.0,
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.white,
            iconSize: 30.0,
            icon: const Icon(Icons.wallet),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Carteira(),
                ),
              );
            },
          ),
        ],
      ),
    );
    floatingActionButtonLocation:
    FloatingActionButtonLocation.centerDocked;
  }
}
