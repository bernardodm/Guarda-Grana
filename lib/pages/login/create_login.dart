import 'package:flutter/material.dart';
import 'package:my_app/pages/login/login_page.dart';
import 'package:my_app/shared/themes/colors.dart';
import 'package:my_app/shared/widgets/custom_text_button.dart';

String email = '';
String senha = '';
String userName = '';

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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              CustomColors.color1,
              Colors.white,
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(right: 50, left: 50),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Crie uma conta',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                onChanged: (text) {
                  userName = text;
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
                  filled: true,
                  fillColor: Colors.white,
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
                  filled: true,
                  fillColor: Colors.white,
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
                  filled: true,
                  fillColor: Colors.white,
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
                  filled: true,
                  fillColor: Colors.white,
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
                  backgroundColor:
                      const MaterialStatePropertyAll(CustomColors.color2),
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
              const CustomTextButton(
                buttonName: 'Já tenho conta!',
                buttonNavigator: LoginPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
