// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  Computed<bool> _$btnLiberadoComputed;

  @override
  bool get btnLiberado =>
      (_$btnLiberadoComputed ??= Computed<bool>(() => super.btnLiberado,
              name: '_LoginControllerBase.btnLiberado'))
          .value;
  Computed<bool> _$showLabelSenhaComputed;

  @override
  bool get showLabelSenha =>
      (_$showLabelSenhaComputed ??= Computed<bool>(() => super.showLabelSenha,
              name: '_LoginControllerBase.showLabelSenha'))
          .value;
  Computed<bool> _$showLabelLoginComputed;

  @override
  bool get showLabelLogin =>
      (_$showLabelLoginComputed ??= Computed<bool>(() => super.showLabelLogin,
              name: '_LoginControllerBase.showLabelLogin'))
          .value;

  final _$loginAtom = Atom(name: '_LoginControllerBase.login');

  @override
  String get login {
    _$loginAtom.reportRead();
    return super.login;
  }

  @override
  set login(String value) {
    _$loginAtom.reportWrite(value, super.login, () {
      super.login = value;
    });
  }

  final _$senhaAtom = Atom(name: '_LoginControllerBase.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$senhaFocadaAtom = Atom(name: '_LoginControllerBase.senhaFocada');

  @override
  bool get senhaFocada {
    _$senhaFocadaAtom.reportRead();
    return super.senhaFocada;
  }

  @override
  set senhaFocada(bool value) {
    _$senhaFocadaAtom.reportWrite(value, super.senhaFocada, () {
      super.senhaFocada = value;
    });
  }

  final _$loginFocadoAtom = Atom(name: '_LoginControllerBase.loginFocado');

  @override
  bool get loginFocado {
    _$loginFocadoAtom.reportRead();
    return super.loginFocado;
  }

  @override
  set loginFocado(bool value) {
    _$loginFocadoAtom.reportWrite(value, super.loginFocado, () {
      super.loginFocado = value;
    });
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  dynamic setLogin(String login) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setLogin');
    try {
      return super.setLogin(login);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSenha(String senha) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setSenha');
    try {
      return super.setSenha(senha);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLoginFocada() {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setLoginFocada');
    try {
      return super.setLoginFocada();
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSenhaFocada() {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setSenhaFocada');
    try {
      return super.setSenhaFocada();
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
login: ${login},
senha: ${senha},
senhaFocada: ${senhaFocada},
loginFocado: ${loginFocado},
btnLiberado: ${btnLiberado},
showLabelSenha: ${showLabelSenha},
showLabelLogin: ${showLabelLogin}
    ''';
  }
}
