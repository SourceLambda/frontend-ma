class AllPostsSchema {
  static String allPosts = """
    query{
      allPosts{
        __typename
        Title
      }
    }
    """;
}
