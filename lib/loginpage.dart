import 'package:flutter/material.dart';
import 'package:my_app/contalogin.dart';
import 'package:my_app/features/home/home.dart';

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
        padding: const EdgeInsets.only(right: 50, left: 50),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Faça seu Login!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
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
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ('E-mail'),
                ),
              ),
              const SizedBox(
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
                  border: const OutlineInputBorder(),
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
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(200, 50),
                  ),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  }
                },
                child: const Text("Entrar"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const ContaLogin(),
                    ),
                  );
                },
                child: const Text("Criar nova conta"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
