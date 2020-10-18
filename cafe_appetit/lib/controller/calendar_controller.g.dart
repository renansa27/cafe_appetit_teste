// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalendarController on _CalendarControllerBase, Store {
  Computed<String> _$dateFormatedComputed;

  @override
  String get dateFormated =>
      (_$dateFormatedComputed ??= Computed<String>(() => super.dateFormated,
              name: '_CalendarControllerBase.dateFormated'))
          .value;
  Computed<bool> _$isShowingDatePickerComputed;

  @override
  bool get isShowingDatePicker => (_$isShowingDatePickerComputed ??=
          Computed<bool>(() => super.isShowingDatePicker,
              name: '_CalendarControllerBase.isShowingDatePicker'))
      .value;

  final _$isConfirmedDateAtom =
      Atom(name: '_CalendarControllerBase.isConfirmedDate');

  @override
  bool get isConfirmedDate {
    _$isConfirmedDateAtom.reportRead();
    return super.isConfirmedDate;
  }

  @override
  set isConfirmedDate(bool value) {
    _$isConfirmedDateAtom.reportWrite(value, super.isConfirmedDate, () {
      super.isConfirmedDate = value;
    });
  }

  final _$selectedDateAtom = Atom(name: '_CalendarControllerBase.selectedDate');

  @override
  DateTime get selectedDate {
    _$selectedDateAtom.reportRead();
    return super.selectedDate;
  }

  @override
  set selectedDate(DateTime value) {
    _$selectedDateAtom.reportWrite(value, super.selectedDate, () {
      super.selectedDate = value;
    });
  }

  final _$showDatePickerAtom =
      Atom(name: '_CalendarControllerBase.showDatePicker');

  @override
  bool get showDatePicker {
    _$showDatePickerAtom.reportRead();
    return super.showDatePicker;
  }

  @override
  set showDatePicker(bool value) {
    _$showDatePickerAtom.reportWrite(value, super.showDatePicker, () {
      super.showDatePicker = value;
    });
  }

  final _$dayAtom = Atom(name: '_CalendarControllerBase.day');

  @override
  int get day {
    _$dayAtom.reportRead();
    return super.day;
  }

  @override
  set day(int value) {
    _$dayAtom.reportWrite(value, super.day, () {
      super.day = value;
    });
  }

  final _$weekDayAtom = Atom(name: '_CalendarControllerBase.weekDay');

  @override
  int get weekDay {
    _$weekDayAtom.reportRead();
    return super.weekDay;
  }

  @override
  set weekDay(int value) {
    _$weekDayAtom.reportWrite(value, super.weekDay, () {
      super.weekDay = value;
    });
  }

  final _$monthAtom = Atom(name: '_CalendarControllerBase.month');

  @override
  int get month {
    _$monthAtom.reportRead();
    return super.month;
  }

  @override
  set month(int value) {
    _$monthAtom.reportWrite(value, super.month, () {
      super.month = value;
    });
  }

  final _$yearAtom = Atom(name: '_CalendarControllerBase.year');

  @override
  String get year {
    _$yearAtom.reportRead();
    return super.year;
  }

  @override
  set year(String value) {
    _$yearAtom.reportWrite(value, super.year, () {
      super.year = value;
    });
  }

  final _$_CalendarControllerBaseActionController =
      ActionController(name: '_CalendarControllerBase');

  @override
  dynamic setConfirmedDate() {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.setConfirmedDate');
    try {
      return super.setConfirmedDate();
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDay(int day) {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.setDay');
    try {
      return super.setDay(day);
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedDate(DateTime selectedDate) {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.setSelectedDate');
    try {
      return super.setSelectedDate(selectedDate);
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWeekDay(int weekDay) {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.setWeekDay');
    try {
      return super.setWeekDay(weekDay);
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMonth(int month) {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.setMonth');
    try {
      return super.setMonth(month);
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setYear(String year) {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.setYear');
    try {
      return super.setYear(year);
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShowDatePicker() {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.setShowDatePicker');
    try {
      return super.setShowDatePicker();
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isConfirmedDate: ${isConfirmedDate},
selectedDate: ${selectedDate},
showDatePicker: ${showDatePicker},
day: ${day},
weekDay: ${weekDay},
month: ${month},
year: ${year},
dateFormated: ${dateFormated},
isShowingDatePicker: ${isShowingDatePicker}
    ''';
  }
}
