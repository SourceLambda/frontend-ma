import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:source_lambda_mobile_app/schemas/posts/all_posts_schema.dart';
import 'package:source_lambda_mobile_app/widgets/post_grid.dart';

class GetAllPosts extends StatefulWidget {
  final width;

  const GetAllPosts({Key? key, required this.width}) : super(key: key);
  @override
  _GetAllPostsState createState() => _GetAllPostsState();
}

class _GetAllPostsState extends State<GetAllPosts> {
  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(document: gql(AllPostsSchema.allPosts)),
        builder: (QueryResult result,
            {VoidCallback? refetch, FetchMore? fetchMore}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Text('Loading');
          }

          List? posts = result.data?['allPosts'];

          if (posts == null) posts = [];

          return PostGrid(data: posts, elementWidth: widget.width);
        });
  }
}
