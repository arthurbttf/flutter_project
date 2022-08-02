import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rede_social/home/comment_page.dart';
import 'package:rede_social/home/controllers/home_controller.dart';
import 'package:rede_social/home/repositories/page_repository.dart';
import 'package:rede_social/home/home_page.dart';

class MyAppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
        Bind((i) => PageRepository(i.get<Dio>())),
        Bind((i) => HomeController(i.get<PageRepository>()))
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => const MyHomePage()),
    ChildRoute(
      '/comments',
      transition: TransitionType.fadeIn,
      child: (context, args) => MyCommentPage(userid: args.data),
    ),
  ];
}
