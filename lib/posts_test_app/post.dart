class PostList {
  int userId;
  int id;
  String title;
  String body;

// default constructor with required parameters
  PostList(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});

// factory method which helps to create instance of same class
  factory PostList.fromJson(dynamic json) => PostList(
      id: json["id"],
      userId: json["userId"],
      title: json["title"],
      body: json["body"]);
}
