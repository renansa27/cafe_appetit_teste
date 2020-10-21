//Controller da página de login

import 'package:mobx/mobx.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String login = "";

  @observable
  String senha = "";

  @observable
  bool senhaFocada = false;

  @observable
  bool loginFocado = false;

  @action
  setLogin(String login) {
    this.login = login;
  }

  @action
  setSenha(String senha) {
    this.senha = senha;
  }

  @action
  setLoginFocada() {
    loginFocado = !loginFocado;
  }

  @action
  setSenhaFocada() {
    senhaFocada = !senhaFocada;
  }

  @computed
  bool get btnLiberado => login != '' && senha != '' ? true : false;

  @computed
  bool get showLabelSenha => senhaFocada || senha != '' ? true : false;

  @computed
  bool get showLabelLogin => loginFocado || login != '' ? true : false;
}
