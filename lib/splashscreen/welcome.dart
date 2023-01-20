import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:student_authentication/reusables/reusable_button.dart';
import 'package:student_authentication/reusables/reusable_text.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assets/student2.png')),
              const SizedBox(height: 15),
              reusableText(
                color: const Color(0xFF4C53a5),
                text: 'Register, Record and Track Students Easily',
                isHead: true,
              ),
              const SizedBox(height: 8),
              reusableText(
                color: Colors.grey,
                text:
                    'Keep Track of your students\' Education progress with a lot of ease',
                isHead: false,
              ),
              const SizedBox(height: 55),
              reusableButton(context, 'Get Started', () {
                Navigator.pushReplacementNamed(context, '/login');
              }, true)
            ],
          ),
        ),
      ),
    );
  }
}
