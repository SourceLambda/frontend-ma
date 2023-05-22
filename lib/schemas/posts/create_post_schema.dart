class CreatePostSchema {
  static String createPost = """ 
  mutation CreatePost(\$title: String!, \$category_id: Int!, \$image: String!,
                      \$desc_text: String!, \$branch: String!, \$tech_details : [String],
                      \$other_details: [String], \$date: String!, 
                      \$units: Int!, \$price: Float!){
    createPost(post : {
      Title: \$title ,
      CategoryID: \$category_id ,
      Image: \$image ,
      Description: {
        Description_text: \$desc_text ,
        Brand: \$branch ,
        Tech_details: \$tech_details ,
        Other_details: \$other_details
      },
      Creation_date: \$date ,
      Units: \$units ,
      Price: \$price ,
    })
  }
  """;
}
