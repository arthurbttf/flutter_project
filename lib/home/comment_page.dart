import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rede_social/home/controllers/home_controller.dart';
import 'package:rede_social/home/widgets/comment_widget.dart';

class MyCommentPage extends StatefulWidget {
  final int userid;
  const MyCommentPage({
    Key? key,
    required this.userid,
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<MyCommentPage> createState() => _MyCommentPageState(userid);
}

class _MyCommentPageState extends State<MyCommentPage> {
  // ignore: prefer_typing_uninitialized_variables
  final userid;
  final HomeController controller = Modular.get();

  _MyCommentPageState(this.userid);
  @override
  void initState() {
    controller.listarComments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comment tpage'),
      ),
      body: Observer(builder: (_) {
        return ListView(
          children: listaComment(controller, context),
        );
      }),
    );
  }

  List<Widget> listaComment(HomeController controller, BuildContext context) {
    return controller.comments
        .map((e) => GestureDetector(
              child: CommentWidget(
                comment: e,
                userid: userid,
              ),
            ))
        .toList();
  }
}
