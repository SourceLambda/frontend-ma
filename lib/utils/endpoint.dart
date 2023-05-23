import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:source_lambda_mobile_app/utils/url.dart';

class EndPoint {
  ValueNotifier<GraphQLClient> getClient() {
    ValueNotifier<GraphQLClient> _client = ValueNotifier(GraphQLClient(
      link: HttpLink(endpointUrl, defaultHeaders: {}),
      cache: GraphQLCache(),
    ));

    return _client;
  }
}
