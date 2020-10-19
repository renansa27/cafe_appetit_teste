// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProdutoController on _ProdutoControllerBase, Store {
  Computed<double> _$totalCompraComputed;

  @override
  double get totalCompra =>
      (_$totalCompraComputed ??= Computed<double>(() => super.totalCompra,
              name: '_ProdutoControllerBase.totalCompra'))
          .value;

  final _$produtoModelAtom = Atom(name: '_ProdutoControllerBase.produtoModel');

  @override
  ProdutoModel get produtoModel {
    _$produtoModelAtom.reportRead();
    return super.produtoModel;
  }

  @override
  set produtoModel(ProdutoModel value) {
    _$produtoModelAtom.reportWrite(value, super.produtoModel, () {
      super.produtoModel = value;
    });
  }

  final _$idAtom = Atom(name: '_ProdutoControllerBase.id');

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$quantidadeAtom = Atom(name: '_ProdutoControllerBase.quantidade');

  @override
  int get quantidade {
    _$quantidadeAtom.reportRead();
    return super.quantidade;
  }

  @override
  set quantidade(int value) {
    _$quantidadeAtom.reportWrite(value, super.quantidade, () {
      super.quantidade = value;
    });
  }

  final _$selectedProductAtom =
      Atom(name: '_ProdutoControllerBase.selectedProduct');

  @override
  bool get selectedProduct {
    _$selectedProductAtom.reportRead();
    return super.selectedProduct;
  }

  @override
  set selectedProduct(bool value) {
    _$selectedProductAtom.reportWrite(value, super.selectedProduct, () {
      super.selectedProduct = value;
    });
  }

  final _$observacoesAtom = Atom(name: '_ProdutoControllerBase.observacoes');

  @override
  String get observacoes {
    _$observacoesAtom.reportRead();
    return super.observacoes;
  }

  @override
  set observacoes(String value) {
    _$observacoesAtom.reportWrite(value, super.observacoes, () {
      super.observacoes = value;
    });
  }

  final _$_ProdutoControllerBaseActionController =
      ActionController(name: '_ProdutoControllerBase');

  @override
  void setObervacoes(String observacoes) {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.setObervacoes');
    try {
      return super.setObervacoes(observacoes);
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeSelectedProduct() {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.changeSelectedProduct');
    try {
      return super.changeSelectedProduct();
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setProdutoModel(ProdutoModel produtoModel) {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.setProdutoModel');
    try {
      return super.setProdutoModel(produtoModel);
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeQntProdutoModel(int qnt) {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.changeQntProdutoModel');
    try {
      return super.changeQntProdutoModel(qnt);
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setProdutoModelQuantidade(int quantidadeRecebida) {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.setProdutoModelQuantidade');
    try {
      return super.setProdutoModelQuantidade(quantidadeRecebida);
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementQtd() {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.incrementQtd');
    try {
      return super.incrementQtd();
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic decrementQtd() {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.decrementQtd');
    try {
      return super.decrementQtd();
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
produtoModel: ${produtoModel},
id: ${id},
quantidade: ${quantidade},
selectedProduct: ${selectedProduct},
observacoes: ${observacoes},
totalCompra: ${totalCompra}
    ''';
  }
}
