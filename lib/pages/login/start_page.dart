import 'package:flutter/material.dart';
import 'package:my_app/shared/themes/colors.dart';
import 'package:my_app/pages/home/home.dart';
import 'package:my_app/pages/login/create_login.dart';
import 'package:my_app/pages/login/login_page.dart';
import 'package:my_app/pages/login/widgets/custom_logo.dart';
import 'package:my_app/shared/widgets/custom_elevated_button.dart';
import 'package:my_app/shared/widgets/custom_text_button.dart';

// Cores:
// #A0E6C0
// #2C4035
// #B1FFD5
// #85BFA0
// #59806B

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
              CustomColors.color1,
              Colors.white,
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
              ),
              SizedBox(
                height: 50,
              ),
              CustomTextButton(
                buttonName: 'Entrar sem Login',
                buttonNavigator: Home(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
