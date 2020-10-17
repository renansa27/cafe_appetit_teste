// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_picker_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DateTimePickerController on _DateTimePickerControllerBase, Store {
  final _$dateTimeAtom = Atom(name: '_DateTimePickerControllerBase.dateTime');

  @override
  DateTime get dateTime {
    _$dateTimeAtom.reportRead();
    return super.dateTime;
  }

  @override
  set dateTime(DateTime value) {
    _$dateTimeAtom.reportWrite(value, super.dateTime, () {
      super.dateTime = value;
    });
  }

  final _$_DateTimePickerControllerBaseActionController =
      ActionController(name: '_DateTimePickerControllerBase');

  @override
  dynamic setDateTime(DateTime date) {
    final _$actionInfo = _$_DateTimePickerControllerBaseActionController
        .startAction(name: '_DateTimePickerControllerBase.setDateTime');
    try {
      return super.setDateTime(date);
    } finally {
      _$_DateTimePickerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dateTime: ${dateTime}
    ''';
  }
}
