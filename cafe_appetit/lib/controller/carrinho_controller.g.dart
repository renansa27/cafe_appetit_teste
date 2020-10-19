// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarrinhoController on _CarrinhoControllerBase, Store {
  Computed<double> _$valorTotalComputed;

  @override
  double get valorTotal =>
      (_$valorTotalComputed ??= Computed<double>(() => super.valorTotal,
              name: '_CarrinhoControllerBase.valorTotal'))
          .value;
  Computed<double> _$totalComputed;

  @override
  double get total => (_$totalComputed ??= Computed<double>(() => super.total,
          name: '_CarrinhoControllerBase.total'))
      .value;

  final _$listaAtom = Atom(name: '_CarrinhoControllerBase.lista');

  @override
  ObservableList<ProdutoController> get lista {
    _$listaAtom.reportRead();
    return super.lista;
  }

  @override
  set lista(ObservableList<ProdutoController> value) {
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

  final _$somatorioAtom = Atom(name: '_CarrinhoControllerBase.somatorio');

  @override
  double get somatorio {
    _$somatorioAtom.reportRead();
    return super.somatorio;
  }

  @override
  set somatorio(double value) {
    _$somatorioAtom.reportWrite(value, super.somatorio, () {
      super.somatorio = value;
    });
  }

  final _$_CarrinhoControllerBaseActionController =
      ActionController(name: '_CarrinhoControllerBase');

  @override
  dynamic updateProdutoController(ProdutoController produtoController) {
    final _$actionInfo = _$_CarrinhoControllerBaseActionController.startAction(
        name: '_CarrinhoControllerBase.updateProdutoController');
    try {
      return super.updateProdutoController(produtoController);
    } finally {
      _$_CarrinhoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addList(ProdutoController produtoController) {
    final _$actionInfo = _$_CarrinhoControllerBaseActionController.startAction(
        name: '_CarrinhoControllerBase.addList');
    try {
      return super.addList(produtoController);
    } finally {
      _$_CarrinhoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void somatorioTotal() {
    final _$actionInfo = _$_CarrinhoControllerBaseActionController.startAction(
        name: '_CarrinhoControllerBase.somatorioTotal');
    try {
      return super.somatorioTotal();
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
  String toString() {
    return '''
lista: ${lista},
productSelected: ${productSelected},
totalCarrinho: ${totalCarrinho},
somatorio: ${somatorio},
valorTotal: ${valorTotal},
total: ${total}
    ''';
  }
}
