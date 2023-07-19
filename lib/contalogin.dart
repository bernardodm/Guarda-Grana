import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/loginpage.dart';

String email = '';
String senha = '';
String nomeusu = '';

class ContaLogin extends StatefulWidget {
  const ContaLogin({super.key});

  @override
  State<ContaLogin> createState() => _ContaLoginState();
}

class _ContaLoginState extends State<ContaLogin> {
  final formKey = GlobalKey<FormState>();

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
                'Crie sua Conta',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                onChanged: (text) {
                  nomeusu = text;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  } else if (value.length < 2) {
                    return 'Nome de pelo menos 2 caracteres';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ('Nome'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: (text) {
                  email = text;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Canpo obrigatório';
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
                  senha = text;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  } else if (value.length < 5) {
                    return 'A senha precisa ter pelo menos 6 dígitos';
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ('Senha'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value != senha) {
                    return 'Senhas diferentes';
                  } else if (value == '') {
                    return 'Campo obrigatório';
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ('Confirmar senha'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  }
                },
                child: Text("Criar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
