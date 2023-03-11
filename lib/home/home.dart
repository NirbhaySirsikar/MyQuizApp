import 'package:flutter/material.dart';
import 'package:test_app/login/login.dart';
import 'package:test_app/services/auth.dart';
import 'package:test_app/topics/topics.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: AuthService().userStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text('Loading...'),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('ERROR'),
            );
          } else if (snapshot.hasData) {
            return const TopicsScreen();
          } else {
            return const LoginScreen();
          }
        });
  }
}
