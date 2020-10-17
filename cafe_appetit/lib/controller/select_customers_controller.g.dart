// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_customers_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SelectCustumersController on _SelectCustumersControllerBase, Store {
  final _$selectedCustumerQntAtom =
      Atom(name: '_SelectCustumersControllerBase.selectedCustumerQnt');

  @override
  int get selectedCustumerQnt {
    _$selectedCustumerQntAtom.reportRead();
    return super.selectedCustumerQnt;
  }

  @override
  set selectedCustumerQnt(int value) {
    _$selectedCustumerQntAtom.reportWrite(value, super.selectedCustumerQnt, () {
      super.selectedCustumerQnt = value;
    });
  }

  final _$_SelectCustumersControllerBaseActionController =
      ActionController(name: '_SelectCustumersControllerBase');

  @override
  void incrementCustumer() {
    final _$actionInfo = _$_SelectCustumersControllerBaseActionController
        .startAction(name: '_SelectCustumersControllerBase.incrementCustumer');
    try {
      return super.incrementCustumer();
    } finally {
      _$_SelectCustumersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementCustumer() {
    final _$actionInfo = _$_SelectCustumersControllerBaseActionController
        .startAction(name: '_SelectCustumersControllerBase.decrementCustumer');
    try {
      return super.decrementCustumer();
    } finally {
      _$_SelectCustumersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedCustumerQnt: ${selectedCustumerQnt}
    ''';
  }
}
