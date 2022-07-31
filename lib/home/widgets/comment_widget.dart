import 'package:flutter/material.dart';
import 'package:rede_social/models/comment_model.dart';

class CommentWidget extends StatefulWidget {
  final CommentModel comment;
  // ignore: prefer_typing_uninitialized_variables
  final userid;
  //final CommentModel comment;
  const CommentWidget({
    Key? key,
    required this.comment,
    required this.userid,
    //required this.comment,
  }) : super(key: key);

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    if (widget.userid == widget.comment.postId) {
      return Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: Color.fromARGB(255, 10, 10, 10),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/imagens/duality_by_ericadalmaso-dacy8zv.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: widget.comment.name,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors
                                    .purple, //Color.fromARGB(255, 129, 247, 231),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Text(
                  widget.comment.body,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        'assets/imagens/heart-solid.png',
                        scale: 35,
                        color: Colors.white,
                      ),
                      onTap: () {
                        setState(() {
                          contador += 1;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      contador.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return const Padding(
        padding: EdgeInsets.all(0),
        child: Center(),
      );
    }
  }
}
