import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:source_lambda_mobile_app/schemas/posts/all_posts_schema.dart';

class GetAllPosts extends StatefulWidget {
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

          if (posts == null) return const Text('No posts');

          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return Text(post["Title"]);
            },
          );
        });
  }
}
