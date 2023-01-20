import 'package:flutter/material.dart';
import 'package:student_authentication/splashscreen/splashscreen.dart';
import 'package:student_authentication/splashscreen/welcome.dart';
import 'package:student_authentication/user_auth/login.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (context) => const SplashScreen(),
        '/welcome': (context) => const Welcome(),
        '/login': (context) => const Login(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MiniProject'),
      ),
    );
  }
}
