import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  String user, pass;

  Test({ this.user = 'user',  this.pass = 'pass'});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Column(
        children: [Text(user), Text(pass)],
      )),
    );
  }
}
