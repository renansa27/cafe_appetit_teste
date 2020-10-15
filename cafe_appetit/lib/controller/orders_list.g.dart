// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OrdersListController on _OrdersListControllerBase, Store {
  Computed<double> _$totalDayComputed;

  @override
  double get totalDay =>
      (_$totalDayComputed ??= Computed<double>(() => super.totalDay,
              name: '_OrdersListControllerBase.totalDay'))
          .value;

  final _$totalByDayAtom = Atom(name: '_OrdersListControllerBase.totalByDay');

  @override
  ObservableList<double> get totalByDay {
    _$totalByDayAtom.reportRead();
    return super.totalByDay;
  }

  @override
  set totalByDay(ObservableList<double> value) {
    _$totalByDayAtom.reportWrite(value, super.totalByDay, () {
      super.totalByDay = value;
    });
  }

  final _$_OrdersListControllerBaseActionController =
      ActionController(name: '_OrdersListControllerBase');

  @override
  dynamic addTotalByDay(double price) {
    final _$actionInfo = _$_OrdersListControllerBaseActionController
        .startAction(name: '_OrdersListControllerBase.addTotalByDay');
    try {
      return super.addTotalByDay(price);
    } finally {
      _$_OrdersListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
totalByDay: ${totalByDay},
totalDay: ${totalDay}
    ''';
  }
}
