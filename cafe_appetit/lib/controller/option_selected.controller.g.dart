// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_selected.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OptionSelectedController on _OptionSelectedControllerBase, Store {
  final _$selectedValueAtom =
      Atom(name: '_OptionSelectedControllerBase.selectedValue');

  @override
  int get selectedValue {
    _$selectedValueAtom.reportRead();
    return super.selectedValue;
  }

  @override
  set selectedValue(int value) {
    _$selectedValueAtom.reportWrite(value, super.selectedValue, () {
      super.selectedValue = value;
    });
  }

  final _$_OptionSelectedControllerBaseActionController =
      ActionController(name: '_OptionSelectedControllerBase');

  @override
  dynamic setSelectedValue(int value) {
    final _$actionInfo = _$_OptionSelectedControllerBaseActionController
        .startAction(name: '_OptionSelectedControllerBase.setSelectedValue');
    try {
      return super.setSelectedValue(value);
    } finally {
      _$_OptionSelectedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedValue: ${selectedValue}
    ''';
  }
}
