// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$commentsAtom =
      Atom(name: '_PageControllerBase.comments', context: context);

  @override
  List<CommentModel> get comments {
    _$commentsAtom.reportRead();
    return super.comments;
  }

  @override
  set comments(List<CommentModel> value) {
    _$commentsAtom.reportWrite(value, super.comments, () {
      super.comments = value;
    });
  }

  late final _$postAtom =
      Atom(name: '_PageControllerBase.post', context: context);

  @override
  List<PostModel> get post {
    _$postAtom.reportRead();
    return super.post;
  }

  @override
  set post(List<PostModel> value) {
    _$postAtom.reportWrite(value, super.post, () {
      super.post = value;
    });
  }

  late final _$listarPostAsyncAction =
      AsyncAction('_PageControllerBase.listarPost', context: context);

  @override
  Future<dynamic> listarPost() {
    return _$listarPostAsyncAction.run(() => super.listarPost());
  }

  late final _$listarCommentsAsyncAction =
      AsyncAction('_PageControllerBase.listarComments', context: context);

  @override
  Future<dynamic> listarComments() {
    return _$listarCommentsAsyncAction.run(() => super.listarComments());
  }

  @override
  String toString() {
    return '''
comments: ${comments},
post: ${post}
    ''';
  }
}
