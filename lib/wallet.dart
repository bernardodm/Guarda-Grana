import 'package:flutter/material.dart';
import 'package:my_app/pages/add/add_page.dart';
import 'package:my_app/shared/widgets/custom_app_bar.dart';

class Carteira extends StatelessWidget {
  const Carteira({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        userName: "userName",
        showValue: true,
        totalValue: 20,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
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
              child: const Text('Aqui vai ficar o gráfico'),
            ),
            //
            //
            //
            //
            Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, bottom: 20, top: 10),
              child: Row(
                children: const [
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
                        border: Border.all(
                            color: const Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: const Text("Teste"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: const Text("Teste"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: const Text("Teste"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: const Text("Teste"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: const Text("Teste"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: const Text("Teste"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: const Text("Teste"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(59, 0, 0, 0)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 10),
                        ],
                      ),
                      child: const Text("Teste"),
                    ),
                  ),
                  const SizedBox(
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
              builder: (context) => AddPage(),
            ),
          );
        },
        elevation: 5.0,
        child: const Icon(
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
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            IconButton(
              color: Colors.white,
              iconSize: 30.0,
              icon: const Icon(Icons.wallet),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
