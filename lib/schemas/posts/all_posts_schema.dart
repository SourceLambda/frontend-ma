class AllPostsSchema {
  static String allPosts = """
    query{
      allPosts{
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
