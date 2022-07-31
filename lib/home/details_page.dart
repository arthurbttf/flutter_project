import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rede_social/home/controllers/home_controller.dart';

class DetailsPage extends StatefulWidget {
  final userid;
  const DetailsPage({super.key, this.userid});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final HomeController controller = Modular.get();
  @override
  void initState() {
    controller.listarPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
