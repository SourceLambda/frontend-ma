import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:source_lambda_mobile_app/schemas/posts/all_posts_schema.dart';
import 'package:source_lambda_mobile_app/schemas/posts/search_schema.dart';
import 'package:source_lambda_mobile_app/widgets/post_grid.dart';

class SearchPost extends StatefulWidget {
  final width;
  final String query;

  const SearchPost({Key? key, required this.width, required this.query})
      : super(key: key);
  @override
  _SearchPostState createState() => _SearchPostState();
}

class _SearchPostState extends State<SearchPost> {
  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            document: gql(SearchSchema.searchSchema),
            variables: {'query': widget.query}),
        builder: (QueryResult result,
            {VoidCallback? refetch, FetchMore? fetchMore}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Text('Loading');
          }

          List? posts = result.data?['browse'];

          if (posts == null) posts = [];

          return PostGrid(data: posts, elementWidth: widget.width);
        });
  }
}
