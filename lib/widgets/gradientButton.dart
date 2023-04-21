import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButton extends StatefulWidget{
  String text;
  Gradient gradient;
  static const Gradient defaultGradient = LinearGradient(
      colors: [Colors.orange,Colors.deepOrange]
  );
  void Function() tap;

  GradientButton({ required this.text, this.gradient = defaultGradient, required this.tap});

  _GradientButtonState createState() => _GradientButtonState();

}

class _GradientButtonState extends State<GradientButton>{
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(left: 30.0, right: 30.0),
      //margin: EdgeInsets.only(left: 30.0, right: 30.0),
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(
              color: Colors.black38,
              blurRadius: 20,
              offset: Offset(0,0)
          ),],
          gradient: widget.gradient
      ),
      child: GestureDetector(
        onTap: widget.tap,
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          //shadowColor: Colors.orangeAccent,
          color: Colors.transparent,
          //elevation: 7.0,
          child: Center(
            child: Text(
              widget.text,
              style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                    )
                  ),
            ),
          ),
        ),
      ),
    );
  }
}