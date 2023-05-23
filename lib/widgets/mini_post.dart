import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MiniPost extends StatefulWidget {
  final String title;
  final String image;
  final int price;
  final int sum_rating;
  final int num_rating;
  final double width;

  const MiniPost(
      {Key? key,
      required this.title,
      required this.image,
      required this.sum_rating,
      required this.num_rating,
      required this.width,
      required this.price})
      : super(key: key);

  _MiniPostState createState() => _MiniPostState();
}

class _MiniPostState extends State<MiniPost> {
  final colors = [Color(0xFFffe6df), Color(0xFFfdcebf), Color(0xFFffe6df)];

  final heighs = [100, 150, 200];

  final _random = new Random();

  @override
  Widget build(BuildContext context) {
    var rate;
    if (widget.sum_rating == null) {
      rate = double.parse(
          (widget.sum_rating / widget.num_rating).toStringAsFixed(1));
    } else
      rate = 0.0;
    var randomHeigh = heighs[_random.nextInt(heighs.length)];
    return Container(
      padding: EdgeInsets.all(widget.width / 10),
      width: widget.width,
      height: widget.width + randomHeigh,
      decoration: BoxDecoration(
          color: colors[_random.nextInt(colors.length)],
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.star_rounded,
                color: Colors.amber,
              ),
              Text(
                rate.toString(),
                style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: widget.width / 10,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Spacer(),
          Container(
            height: widget.width / 3 + randomHeigh,
            width: widget.width - widget.width / 5,
            //TODO: repace with real Image
            //child: Image(image: NetworkImage(widget.image)),
            child: Image(
                image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/buku-14.appspot.com/o/261987_ys8mqf.png?alt=media&token=aead9c3b-9344-44f7-a487-fe76725eca90')),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(getFirstThreeWords(widget.title),
                  style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: widget.width / 12,
                      fontWeight: FontWeight.bold)),
              Text(formatToColombianPesos(widget.price),
                  style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: widget.width / 10,
                      fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
    );
  }

  String getFirstThreeWords(String input) {
    List<String> words = input.split(' ');
    if (words.length > 3) {
      return words.sublist(0, 3).join(" ");
    } else {
      return words.join(" ");
    }
  }

  String formatToColombianPesos(int amount) {
    final formatter = NumberFormat('#,###', 'en_US');
    String formattedAmount = '\$${formatter.format(amount)}';
    return formattedAmount;
  }
}
