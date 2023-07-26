import 'package:flutter/material.dart';
import 'package:my_app/pages/login/create_login.dart';
import 'package:my_app/pages/login/login_page.dart';
import 'package:my_app/pages/login/widgets/custom_logo.dart';
import 'package:my_app/shared/widgets/custom_elevated_button.dart';

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
        decoration: const BoxDecoration(
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
            children: const [
              CustomLogo(),
              SizedBox(
                height: 100,
              ),
              CustomElevatedButton(
                buttonName: 'Criar Conta',
                buttonNavigator: CreateLogin(),
              ),
              SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                buttonName: 'Fazer Login',
                buttonNavigator: LoginPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
