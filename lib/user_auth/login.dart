import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_authentication/reusables/reusable_button.dart';
import 'package:student_authentication/reusables/reusable_text.dart';
import 'package:student_authentication/reusables/textformfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  bool _isPassword = true;

  String? validateUsername(String? username) {
    if (username == null || username.isEmpty) {
      return 'Username cannot be empty';
    }
    return null;
  }

  String? validatePassword(String? password) {
    return (password == null || password.isEmpty)
        ? 'Password can not be empty'
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                reusableText(
                  text: 'Sign in here',
                  isHead: true,
                  color: const Color.fromARGB(255, 12, 30, 147),
                  size: 25,
                ),
                reusableText(
                  text: 'Welcome back you were dearly missed',
                  isHead: false,
                  color: Colors.grey,
                  size: 15,
                ),
                const SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: reusableText(
                    text: 'Username',
                    isHead: true,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
                const SizedBox(height: 5),
                reusableTextField(
                  text: 'John Doe',
                  controller: _username,
                  isPasswordType: false,
                  prefixIcon:
                      const Icon(Icons.person, size: 20, color: Colors.black),
                  validate: validateUsername,
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: reusableText(
                    text: 'Password',
                    isHead: true,
                    color: Colors.black,
                    size: 15,
                  ),
                ),
                const SizedBox(height: 5),
                passwordFormField(),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: reusableText(
                    text: 'Forgot password?',
                    isHead: false,
                    color: const Color.fromARGB(255, 12, 30, 147),
                    size: 15,
                  ),
                ),
                const SizedBox(height: 150),
                reusableButton(context, 'Sign In', () {}, true),
                const SizedBox(height: 15),
                buttonGoogle(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buttonGoogle(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.black;
                }
                return Colors.white;
              }),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FaIcon(FontAwesomeIcons.google,
                  color: Color.fromARGB(255, 12, 30, 147)),
              const SizedBox(width: 10),
              Text('Sign in with Google',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
            ],
          ),
        ));
  }

  TextFormField passwordFormField() {
    return TextFormField(
      controller: _password,
      validator: validatePassword,
      obscureText: _isPassword,
      style: TextStyle(color: Colors.black.withOpacity(0.9)),
      enableSuggestions: false,
      autocorrect: false,
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        hintText: '*************',
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(
            width: 4,
            style: BorderStyle.solid,
            color: Colors.orangeAccent,
          ),
        ),
        prefixIcon: const Icon(Icons.lock, size: 20, color: Colors.black),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isPassword = !_isPassword;
            });
          },
          icon: _isPassword
              ? const Icon(Icons.visibility, color: Colors.black)
              : const Icon(Icons.visibility_off, color: Colors.black),
        ),
      ),
      keyboardType:
          _isPassword ? TextInputType.visiblePassword : TextInputType.text,
    );
  }
}
