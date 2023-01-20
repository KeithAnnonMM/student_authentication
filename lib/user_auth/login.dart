import 'package:flutter/material.dart';
import 'package:student_authentication/reusables/reusable_text.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: reusableText(
          text: 'Login Here',
          isHead: true,
          color: Colors.black,
        ),
      ),
    );
  }
}
