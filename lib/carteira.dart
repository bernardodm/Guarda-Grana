import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/addpage.dart';

class Carteira extends StatefulWidget {
  const Carteira({super.key});

  @override
  State<Carteira> createState() => _CarteiraState();
}

class _CarteiraState extends State<Carteira> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          iconSize: 30.0,
          icon: Icon(Icons.person),
          onPressed: () {},
        ),
        title: Text("Bernardo"),
        actions: [
          Center(
            child: Text("R\$100,00"),
          ),
        ],
      ),

      //
      //
      //
      //
      //
      //
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Addpage(),
            ),
          );
        },
        elevation: 5.0,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //
      //
      //
      //
      //
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        height: 75,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              color: Colors.white,
              iconSize: 30.0,
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            IconButton(
              color: Colors.white,
              iconSize: 30.0,
              icon: Icon(Icons.wallet),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
