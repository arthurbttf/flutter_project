import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rede_social/home/controllers/home_controller.dart';
import 'package:rede_social/home/widgets/home_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HomeController controller = Modular.get();
  @override
  void initState() {
    controller.listarPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Circle',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        //backgroundColor: Color(0xff301934),
      ),
      body: Observer(builder: (_) {
        return ListView(
          children: listaPost(controller, context),
        );
      }),
    );
  }

//Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FruitDetail(fruitDataModel: Fruitdata[index],)));
  List<Widget> listaPost(HomeController controller, BuildContext context) {
    return controller.post
        .map((e) => GestureDetector(
              onTap: () => Modular.to.pushNamed('/comments', arguments: e.id),
              child: PostWidget(post: e),
            ))
        .toList();
  }
}
