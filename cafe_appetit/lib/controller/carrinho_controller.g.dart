// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarrinhoController on _CarrinhoControllerBase, Store {
  final _$listaAtom = Atom(name: '_CarrinhoControllerBase.lista');

  @override
  ObservableList<ProdutoModel> get lista {
    _$listaAtom.reportRead();
    return super.lista;
  }

  @override
  set lista(ObservableList<ProdutoModel> value) {
    _$listaAtom.reportWrite(value, super.lista, () {
      super.lista = value;
    });
  }

  final _$productSelectedAtom =
      Atom(name: '_CarrinhoControllerBase.productSelected');

  @override
  bool get productSelected {
    _$productSelectedAtom.reportRead();
    return super.productSelected;
  }

  @override
  set productSelected(bool value) {
    _$productSelectedAtom.reportWrite(value, super.productSelected, () {
      super.productSelected = value;
    });
  }

  final _$totalCarrinhoAtom =
      Atom(name: '_CarrinhoControllerBase.totalCarrinho');

  @override
  double get totalCarrinho {
    _$totalCarrinhoAtom.reportRead();
    return super.totalCarrinho;
  }

  @override
  set totalCarrinho(double value) {
    _$totalCarrinhoAtom.reportWrite(value, super.totalCarrinho, () {
      super.totalCarrinho = value;
    });
  }

  final _$_CarrinhoControllerBaseActionController =
      ActionController(name: '_CarrinhoControllerBase');

  @override
  dynamic addProduto(ProdutoModel produto) {
    final _$actionInfo = _$_CarrinhoControllerBaseActionController.startAction(
        name: '_CarrinhoControllerBase.addProduto');
    try {
      return super.addProduto(produto);
    } finally {
      _$_CarrinhoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSelected() {
    final _$actionInfo = _$_CarrinhoControllerBaseActionController.startAction(
        name: '_CarrinhoControllerBase.setSelected');
    try {
      return super.setSelected();
    } finally {
      _$_CarrinhoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addTotal(double valorAdd) {
    final _$actionInfo = _$_CarrinhoControllerBaseActionController.startAction(
        name: '_CarrinhoControllerBase.addTotal');
    try {
      return super.addTotal(valorAdd);
    } finally {
      _$_CarrinhoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removerTotal(double valorRemove) {
    final _$actionInfo = _$_CarrinhoControllerBaseActionController.startAction(
        name: '_CarrinhoControllerBase.removerTotal');
    try {
      return super.removerTotal(valorRemove);
    } finally {
      _$_CarrinhoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lista: ${lista},
productSelected: ${productSelected},
totalCarrinho: ${totalCarrinho}
    ''';
  }
}
