class CommentModel {
  int postId;
  int id;
  String name;
  String email;
  String body;

  CommentModel(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'postId': postId,
      'id': id,
      'name': name,
      'email': email,
      'body': body,
    };
  }

  factory CommentModel.fromJson(Map<String, dynamic> map) {
    return CommentModel(
      postId: map['postId']?.toInt(),
      id: map['id']?.toInt(),
      name: map['name'],
      email: map['email'],
      body: map['body'],
    );
  }
}
