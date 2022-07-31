import 'package:flutter/material.dart';
import 'package:rede_social/models/post_model.dart';

class PostWidget extends StatefulWidget {
  final PostModel post;
  //final CommentModel comment;
  const PostWidget({
    Key? key,
    required this.post,
    //required this.comment,
  }) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    int contador = 0;
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          //set border radius more than 50% of height and width to make circle
        ),
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: widget.post.title,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        //fontFamily:
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.purple,
              ),
              Text(
                widget.post.body,
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
                        contador++;
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
  }
}
