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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            //
            //
            //
            //
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Text('Aqui vai ficar o gráfico'),
            ),
            //
            //
            //
            //
            Padding(
              padding:
                  EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.green,
                  ),
                  Text(
                    'R\$100,00',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),
                  ),
                  Spacer(
                    flex: 10,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                  ),
                  Text(
                    'R\$80,00',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 445,
              width: MediaQuery.of(context).size.width - 50,
              color: Colors.white,
              child: ListView(
                children: [
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: Text("Teste"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: Text("Teste"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: Text("Teste"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: Text("Teste"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: Text("Teste"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: Text("Teste"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: Text("Teste"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: Text("Teste"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
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
