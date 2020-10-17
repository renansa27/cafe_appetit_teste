// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClienteController on _ClienteControllerBase, Store {
  final _$selectedCustumerAtom =
      Atom(name: '_ClienteControllerBase.selectedCustumer');

  @override
  bool get selectedCustumer {
    _$selectedCustumerAtom.reportRead();
    return super.selectedCustumer;
  }

  @override
  set selectedCustumer(bool value) {
    _$selectedCustumerAtom.reportWrite(value, super.selectedCustumer, () {
      super.selectedCustumer = value;
    });
  }

  final _$_ClienteControllerBaseActionController =
      ActionController(name: '_ClienteControllerBase');

  @override
  void setSelectedCustumer() {
    final _$actionInfo = _$_ClienteControllerBaseActionController.startAction(
        name: '_ClienteControllerBase.setSelectedCustumer');
    try {
      return super.setSelectedCustumer();
    } finally {
      _$_ClienteControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedCustumer: ${selectedCustumer}
    ''';
  }
}
