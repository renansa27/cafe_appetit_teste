import 'package:mobx/mobx.dart';
part 'calendar_controller.g.dart';

class CalendarController = _CalendarControllerBase with _$CalendarController;

abstract class _CalendarControllerBase with Store {
  @observable
  bool isConfirmedDate = false;

  @observable
  DateTime selectedDate = DateTime.now();

  @observable
  bool showDatePicker = false;

  @observable
  int day = DateTime.now().day;

  @observable
  int weekDay = DateTime.now().weekday;

  @observable
  int month = DateTime.now().month;

  @observable
  String year = DateTime.now().year.toString();

  @action
  setConfirmedDate() {
    this.isConfirmedDate = !isConfirmedDate;
  }

  @action
  void setDay(int day) {
    this.day = DateTime.now().day;
  }

  @action
  void setSelectedDate(DateTime selectedDate) {
    this.selectedDate = selectedDate;
  }

  @action
  void setWeekDay(int weekDay) {
    this.weekDay = weekDay;
  }

  @action
  void setMonth(int month) {
    this.month = month;
  }

  @action
  void setYear(String year) {
    this.year = year;
    this.selectedDate = DateTime.parse(
        '$year-${this.selectedDate.month}-${this.selectedDate.day}');
  }

  @action
  void setShowDatePicker() {
    this.showDatePicker = !showDatePicker;
  }

  @computed
  String get dateFormated =>
      this.selectedDate.day.toString() +
      '/' +
      this.selectedDate.month.toString() +
      '/' +
      this.selectedDate.year.toString();

  @computed
  bool get isShowingDatePicker => showDatePicker;
}
