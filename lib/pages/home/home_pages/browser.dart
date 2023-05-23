import 'package:flutter/material.dart';
import 'package:material_text_fields/material_text_fields.dart';
import 'package:material_text_fields/theme/material_text_field_theme.dart';
import 'package:source_lambda_mobile_app/widgets/search_posts.dart';

class Browser extends StatefulWidget {
  _BrowserState createState() => _BrowserState();
}

class _BrowserState extends State<Browser> {
  late TextEditingController _controller;
  var query = "";

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width / 100;
    var _height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(_width * 4, 0, _width * 4, 0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: _height * 6,
            ),
            MaterialTextField(
              keyboardType: TextInputType.emailAddress,
              hint: 'What are you looking for?',
              textInputAction: TextInputAction.search,
              prefixIcon: const Icon(Icons.search),
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  query = value;
                });
                ;
              },
              theme: FilledOrOutlinedTextTheme(
                  radius: 30,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  errorStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                  fillColor: Colors.grey.withAlpha(30),
                  prefixIconColor: Colors.black38,
                  enabledColor: Colors.grey.withAlpha(30),
                  focusedColor: Color(0xFFEC4E20)),
            ),
            /*TextField(
              textInputAction: TextInputAction.search,
              onSubmitted: (value) => setState(() {
                query = value;
              }),
            ),*/
            SizedBox(
              height: _height * 6,
            ),
            SearchPost(width: _width, query: query)
          ],
        )),
      ),
    );
  }
}
