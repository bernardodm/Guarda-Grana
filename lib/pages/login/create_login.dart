import 'package:flutter/material.dart';
import 'package:my_app/pages/login/login_page.dart';

String email = '';
String senha = '';
String nomeusu = '';

class CreateLogin extends StatefulWidget {
  const CreateLogin({super.key});

  @override
  State<CreateLogin> createState() => _CreateLoginState();
}

class _CreateLoginState extends State<CreateLogin> {
  final formKey = GlobalKey<FormState>();
  bool _mostrasenha = true;
  bool _mostrasenhaconfirma = true;

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
                'Crie sua Conta',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
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
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ('Nome'),
                ),
              ),
              const SizedBox(
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
                obscureText: _mostrasenhaconfirma,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: ('Confirmar senha'),
                  suffixIcon: GestureDetector(
                    child: Icon(_mostrasenhaconfirma == false
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onTap: () {
                      setState(() {
                        _mostrasenhaconfirma = !_mostrasenhaconfirma;
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
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  }
                },
                child: const Text("Criar"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: const Text("Já possuo conta!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
