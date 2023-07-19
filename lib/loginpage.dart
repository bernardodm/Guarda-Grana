import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/contalogin.dart';
import 'package:my_app/home.dart';

String lemail = '';
String lsenha = '';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  bool _mostrasenha = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(right: 50, left: 50),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Faça seu Login!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                onChanged: (text) {
                  lemail = text;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  } else if (email != lemail) {
                    return 'E-mail não cadastrado';
                  } else if (value.length < 5) {
                    return 'E-mail incompleto';
                  } else if (!value.contains('@') || !value.contains('.com')) {
                    return 'E-mail incompleto';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ('E-mail'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: (text) {
                  lsenha = text;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  } else if (senha != lsenha) {
                    return 'Senha incorreta';
                  }
                  return null;
                },
                obscureText: _mostrasenha,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ('Senha'),
                  suffixIcon: GestureDetector(
                    child: Icon(_mostrasenha == false
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onTap: () {
                      setState(() {
                        _mostrasenha = !_mostrasenha;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(200, 50),
                  ),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  } else {
                    ;
                  }
                },
                child: Text("Entrar"),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ContaLogin(),
                    ),
                  );
                },
                child: Text("Criar nova conta"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
