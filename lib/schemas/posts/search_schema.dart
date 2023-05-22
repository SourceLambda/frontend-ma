class SearchSchema {
  static String searchSchema = """
    query Browse(\$query: String!){
      browse(q: \$query){
        __typename
        Title,
        Image,
        Price,
        Sum_ratings,
        Num_ratings
      }
    }
    """;
}
