import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String login = "";

  @observable
  String senha = "";

  @action
  setLogin(String login) {
    this.login = login;
  }

  @action
  setSenha(String senha) {
    this.senha = senha;
  }
}
