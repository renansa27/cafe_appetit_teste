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

  final _$quantidadeClienteAtom =
      Atom(name: '_ProdutoControllerBase.quantidadeCliente');

  @override
  int get quantidadeCliente {
    _$quantidadeClienteAtom.reportRead();
    return super.quantidadeCliente;
  }

  @override
  set quantidadeCliente(int value) {
    _$quantidadeClienteAtom.reportWrite(value, super.quantidadeCliente, () {
      super.quantidadeCliente = value;
    });
  }

  final _$selectedProdutcAtom =
      Atom(name: '_ProdutoControllerBase.selectedProdutc');

  @override
  bool get selectedProdutc {
    _$selectedProdutcAtom.reportRead();
    return super.selectedProdutc;
  }

  @override
  set selectedProdutc(bool value) {
    _$selectedProdutcAtom.reportWrite(value, super.selectedProdutc, () {
      super.selectedProdutc = value;
    });
  }

  final _$_ProdutoControllerBaseActionController =
      ActionController(name: '_ProdutoControllerBase');

  @override
  dynamic changeSelectedProdutc() {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.changeSelectedProdutc');
    try {
      return super.changeSelectedProdutc();
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setOrderInfoModel(ProdutoModel produtoModel) {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.setOrderInfoModel');
    try {
      return super.setOrderInfoModel(produtoModel);
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setId(dynamic index) {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.setId');
    try {
      return super.setId(index);
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic incrementQtdCliente() {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.incrementQtdCliente');
    try {
      return super.incrementQtdCliente();
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic decrementQtdCliente() {
    final _$actionInfo = _$_ProdutoControllerBaseActionController.startAction(
        name: '_ProdutoControllerBase.decrementQtdCliente');
    try {
      return super.decrementQtdCliente();
    } finally {
      _$_ProdutoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
produtoModel: ${produtoModel},
id: ${id},
quantidadeCliente: ${quantidadeCliente},
selectedProdutc: ${selectedProdutc},
totalCompra: ${totalCompra}
    ''';
  }
}
