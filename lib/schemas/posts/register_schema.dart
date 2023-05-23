class RegisterSchema {
  static String register = """
    mutation CreateProfile(\$profile: ProfileInput!) {
      createProfile(profile: \$profile) {
        idProfile
      }
    }
  """;
}
