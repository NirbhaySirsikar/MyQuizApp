import 'package:flutter/material.dart';
import 'package:test_app/services/auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const FlutterLogo(
              size: 150,
            ),
            Flexible(
              child: LoginButton(
                color: Colors.deepPurple,
                icon: FontAwesomeIcons.userNinja,
                loginMethod: AuthService().anonLogin,
                text: 'Continue as Guest',
              ),
            ),
            Flexible(
              child: LoginButton(
                color: Colors.black,
                icon: FontAwesomeIcons.google,
                loginMethod: AuthService().googleLogin,
                text: 'Sign in with Google',
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton(
      {super.key,
      required this.color,
      required this.icon,
      required this.loginMethod,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: ElevatedButton.icon(
          icon: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          style: TextButton.styleFrom(
              padding: const EdgeInsets.all(24), backgroundColor: color),
          onPressed: (() => loginMethod()),
          label: Text(text),
        ));
  }
}
