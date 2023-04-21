import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'form_widget.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(width / 20, height / 15, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back,",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                          fontWeight: FontWeight.w400)),
                ),
                Text(
                  "Log In!",
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 46,
                          color: Colors.blue,
                          fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          ),
          LoginForm()
        ],
      ),
    );
  }
}
