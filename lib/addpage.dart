import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/carteira.dart';
import 'package:my_app/home.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  final fieldText = TextEditingController();

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
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 100),
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome:',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor: (se for despesa, coloque o valor negativo)',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Data: (Formato xx/yy/zzzz)',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Descrição:',
              ),
            ),
          ),
          //
          //
          //
          //
          //
          Center(
            child: ElevatedButton(
              style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll(
                  Size(150, 50),
                ),
              ),
              onPressed: () {},
              child: Text("Salvar"),
            ),
          )
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
          Navigator.of(context).pop();
        },
        elevation: 5.0,
        child: Icon(
          Icons.close,
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
            IconButton(
              color: Colors.white,
              iconSize: 30.0,
              icon: Icon(Icons.wallet),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Carteira(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
