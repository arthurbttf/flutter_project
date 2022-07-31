import 'package:mobx/mobx.dart';
import 'package:rede_social/models/comment_model.dart';
import 'package:rede_social/models/post_model.dart';
import 'package:rede_social/home/repositories/page_repository.dart';
part 'page_controller.g.dart';
//é aqui que se usa o build_runner

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PageRepository _pageRepository;

  _HomeControllerBase(this._pageRepository);

  @observable
  List<CommentModel> comments = [];
  @observable
  List<PostModel> post = [];

  @action
  Future listarPost() async {
    post = await _pageRepository.getPost();
  }

  @action
  Future listarComments() async {
    comments = await _pageRepository.getComment();
  }
}
