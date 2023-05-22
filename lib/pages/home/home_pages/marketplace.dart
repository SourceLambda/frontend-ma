import 'package:flutter/material.dart';
import 'package:source_lambda_mobile_app/widgets/get_all_post_widget.dart';
import 'package:source_lambda_mobile_app/widgets/mini_post.dart';
import 'package:source_lambda_mobile_app/widgets/post_grid.dart';

class MarketPlace extends StatefulWidget {
  @override
  _MarketPlaceState createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  List _postsFix = [
    {
      "Title": "Titulo",
      "Image":
          "https://firebasestorage.googleapis.com/v0/b/buku-14.appspot.com/o/261987_ys8mqf.png?alt=media&token=aead9c3b-9344-44f7-a487-fe76725eca90",
      "Price": 10500.0,
      "Sum_ratings": 45,
      "Num_ratings": 6
    },
    {
      "Title": "Titulo",
      "Image":
          "https://firebasestorage.googleapis.com/v0/b/buku-14.appspot.com/o/261987_ys8mqf.png?alt=media&token=aead9c3b-9344-44f7-a487-fe76725eca90",
      "Price": 9900.0,
      "Sum_ratings": 5,
      "Num_ratings": 1
    },
    {
      "Title": "Titulo",
      "Image":
          "https://firebasestorage.googleapis.com/v0/b/buku-14.appspot.com/o/261987_ys8mqf.png?alt=media&token=aead9c3b-9344-44f7-a487-fe76725eca90",
      "Price": 50800.0,
      "Sum_ratings": 10,
      "Num_ratings": 3
    },
    {
      "Title": "Titulo",
      "Image":
          "https://firebasestorage.googleapis.com/v0/b/buku-14.appspot.com/o/261987_ys8mqf.png?alt=media&token=aead9c3b-9344-44f7-a487-fe76725eca90",
      "Price": 7750.0,
      "Sum_ratings": 15,
      "Num_ratings": 4
    },
    {
      "Title": "Titulo",
      "Image":
          "https://firebasestorage.googleapis.com/v0/b/buku-14.appspot.com/o/261987_ys8mqf.png?alt=media&token=aead9c3b-9344-44f7-a487-fe76725eca90",
      "Price": 120000.0,
      "Sum_ratings": 5,
      "Num_ratings": 1
    },
    {
      "Title": "Titulo",
      "Image":
          "https://firebasestorage.googleapis.com/v0/b/buku-14.appspot.com/o/261987_ys8mqf.png?alt=media&token=aead9c3b-9344-44f7-a487-fe76725eca90",
      "Price": 9950.0,
      "Sum_ratings": 345,
      "Num_ratings": 80
    },
    {
      "Title": "Titulo",
      "Image":
          "https://firebasestorage.googleapis.com/v0/b/buku-14.appspot.com/o/261987_ys8mqf.png?alt=media&token=aead9c3b-9344-44f7-a487-fe76725eca90",
      "Price": 2500.0,
      "Sum_ratings": 5,
      "Num_ratings": 1
    }
  ];
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
              Row(
                children: [
                  Text(
                    "Let's Get Started",
                    style: TextStyle(
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.bold,
                        fontSize: _height * 3),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: _height * 3,
                    backgroundColor: Color.fromARGB(50, 21, 24, 1),
                    backgroundImage:
                        AssetImage('assets/images/logo_circle.png'),
                  )
                ],
              ),
              SizedBox(
                height: _height * 6,
              ),
              GetAllPosts(width: _width),
              SizedBox(
                height: _height * 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
