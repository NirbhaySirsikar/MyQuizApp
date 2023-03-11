import 'package:test_app/about/about.dart';
import 'package:test_app/login/login.dart';
import 'package:test_app/home/home.dart';
import 'package:test_app/profile/profile.dart';
import 'package:test_app/topics/topics.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/about': (context) => const AboutScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
};
