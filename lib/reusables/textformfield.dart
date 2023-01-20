import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

TextFormField reusableTextField(
    {required String text,
    required TextEditingController controller,
    required bool isPasswordType,
    required Icon prefixIcon,
    required validate}) {
  return TextFormField(
    controller: controller,
    validator: validate,
    obscureText: isPasswordType,
    style: TextStyle(color: Colors.black.withOpacity(0.9)),
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.blue,
    decoration: InputDecoration(
        hintText: text,
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
        prefixIcon: prefixIcon,
        suffixIcon: isPasswordType
            ? IconButton(
                onPressed: () {},
                icon: const Icon(Icons.visibility, color: Colors.black))
            : Container(width: 0)),
    keyboardType:
        isPasswordType ? TextInputType.visiblePassword : TextInputType.text,
  );
}
