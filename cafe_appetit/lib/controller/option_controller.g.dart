// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OptionController on _OptionControllerBase, Store {
  final _$selectedIndexAtom = Atom(name: '_OptionControllerBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$selectedProductAtom =
      Atom(name: '_OptionControllerBase.selectedProduct');

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

  final _$_OptionControllerBaseActionController =
      ActionController(name: '_OptionControllerBase');

  @override
  void changeSelectedProduct() {
    final _$actionInfo = _$_OptionControllerBaseActionController.startAction(
        name: '_OptionControllerBase.changeSelectedProduct');
    try {
      return super.changeSelectedProduct();
    } finally {
      _$_OptionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedIndex(int index) {
    final _$actionInfo = _$_OptionControllerBaseActionController.startAction(
        name: '_OptionControllerBase.setSelectedIndex');
    try {
      return super.setSelectedIndex(index);
    } finally {
      _$_OptionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex},
selectedProduct: ${selectedProduct}
    ''';
  }
}
