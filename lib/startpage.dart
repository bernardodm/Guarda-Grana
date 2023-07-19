import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/contalogin.dart';
import 'package:my_app/loginpage.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Color.fromARGB(255, 196, 228, 255),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(500),
                    ),
                  ),
                  child: Center(
                    child: Text("Logo"),
                  ),
                  height: 250,
                  width: MediaQuery.of(context).size.width - 300,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(200, 50),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ContaLogin(),
                    ),
                  );
                },
                child: Text('Criar Conta'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(200, 50),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text('Fazer Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
