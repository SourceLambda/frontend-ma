class LoginSchema {
  static String login = """
    mutation LoginToProfile(\$credentials: Credentials!) {
      loginToProfile(credentials: \$credentials) {
        idProfile
      }
    }
  """;
}
