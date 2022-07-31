import 'package:dio/dio.dart';
import 'package:rede_social/models/comment_model.dart';
import 'package:rede_social/models/post_model.dart';

class PageRepository {
  final Dio dio;

  PageRepository(this.dio);

  Future<List<CommentModel>> getComment() async {
    final Response response =
        await dio.get('https://jsonplaceholder.typicode.com/comments');
    final comment =
        (response.data as List).map((e) => CommentModel.fromJson(e)).toList();
    return comment;
  }

  Future<List<PostModel>> getPost() async {
    final Response response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    final post =
        (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    return post;
  }
}
