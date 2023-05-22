import 'package:flutter/material.dart';
import 'package:source_lambda_mobile_app/widgets/mini_post.dart';

class PostGrid extends StatefulWidget {
  final data;
  final elementWidth;

  const PostGrid({Key? key, required this.data, required this.elementWidth})
      : super(key: key);

  _PostGridState createState() => _PostGridState();
}

class _PostGridState extends State<PostGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: getLeftRow(widget.data, widget.elementWidth),
        ),
        SizedBox(
          width: widget.elementWidth * 4,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: getRighRow(widget.data, widget.elementWidth),
        )
      ]),
    );
  }

  List<Widget> getLeftRow(List data, double width) {
    List<Widget> posts = List.empty(growable: true);
    for (var i = 0; i < (data.length / 2).floor(); i++) {
      var post = data[i * 2];
      posts.add(MiniPost(
          title: post["Title"],
          image: post["Image"],
          price: post["Price"],
          sum_rating: post["Sum_ratings"],
          num_rating: post["Num_ratings"],
          width: width * 44));
      posts.add(SizedBox(
        height: width * 4,
      ));
      if (i == (data.length / 2).floor() && data.length % 2 == 1) {
        post = data[i * 2 + 2];
        posts.add(MiniPost(
            title: post["Title"],
            image: post["Image"],
            price: post["Price"],
            sum_rating: post["Sum_ratings"],
            num_rating: post["Num_ratings"],
            width: width * 44));
        break;
      }
    }

    return posts;
  }

  List<Widget> getRighRow(List data, double width) {
    List<Widget> posts = List.empty(growable: true);
    for (var i = 0; i < (data.length / 2).floor(); i++) {
      var post = data[i * 2 + 1];
      posts.add(MiniPost(
          title: post["Title"],
          image: post["Image"],
          price: post["Price"],
          sum_rating: post["Sum_ratings"],
          num_rating: post["Num_ratings"],
          width: width * 44));
      posts.add(SizedBox(
        height: width * 4,
      ));
    }

    return posts;
  }
}
