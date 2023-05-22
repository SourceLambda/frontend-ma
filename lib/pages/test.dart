import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:source_lambda_mobile_app/schemas/posts/create_post_schema.dart';
import 'package:source_lambda_mobile_app/widgets/get_all_post_widget.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Mutation(
        options: MutationOptions(
            document: gql(CreatePostSchema.createPost),
            onCompleted: (data) => print(data)),
        builder: (runMutation, result) {
          return FloatingActionButton(
              onPressed: () => runMutation({
                    'title': "Iphone XR",
                    'category_id': 10,
                    'image':
                        'https://firebasestorage.googleapis.com/v0/b/:]:][]:]c]a]:]s]a]i]:]c]:]s]a]i][]c]:]s]c]i][]i]i]a]:]c]:]c]a]s]s]:]i][]:][]c][]s]s][]i]:]i]s]:]a]s]s]s]:]:]c]i]s]/o/images%2Fftqf6bq6ihx-bcj29bakw6.jpeg?alt=media&token=e30vfrht548brxvhhhvqcdy2d-agppa7u9y',
                    'desc_text': 'desc',
                    'branch': 'apple',
                    'tech_details': ['6GB', '48MPX'],
                    'other_details': ['Negro'],
                    'date': '2023-07-10',
                    'units': 40,
                    'price': 10500.0
                  }));
        },
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [Text("Posts"), GetAllPosts()],
        ),
      ),
    );
  }
}
