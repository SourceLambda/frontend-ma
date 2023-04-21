import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_text_fields/material_text_fields.dart';
import 'package:material_text_fields/theme/material_text_field_theme.dart';

import '../widgets/gradientButton.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.fromLTRB(width / 10, height / 10, width / 10, 0),
      child: Column(
        children: [
          MaterialTextField(
              keyboardType: TextInputType.emailAddress,
              hint: 'Email',
              textInputAction: TextInputAction.next,
              prefixIcon: const Icon(Icons.email_outlined),
              theme: FilledOrOutlinedTextTheme(
                  radius: 30,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  errorStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                  fillColor: Colors.grey.withAlpha(30),
                  suffixIconColor: Colors.red,
                  prefixIconColor: Colors.blue,
                  enabledColor: Colors.grey,
                  focusedColor: Colors.green)),
          SizedBox(
            height: height / 30,
          ),
          MaterialTextField(
              keyboardType: TextInputType.emailAddress,
              hint: 'Password',
              textInputAction: TextInputAction.next,
              prefixIcon: const Icon(Icons.password_outlined),
              theme: FilledOrOutlinedTextTheme(
                  radius: 30,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  errorStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                  fillColor: Colors.grey.withAlpha(30),
                  suffixIconColor: Colors.red,
                  prefixIconColor: Colors.blue,
                  enabledColor: Colors.grey,
                  focusedColor: Colors.green)),
          SizedBox(
            height: height / 30,
          ),
          GradientButton(
            text: "Log In",
            tap: () => {Navigator.pushNamed(context, "/test")},
            gradient: const LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.blue]),
          )
        ],
      ),
    );
  }
}
