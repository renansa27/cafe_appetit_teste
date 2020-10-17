import 'package:mobx/mobx.dart';
part 'date_picker_controller.g.dart';

class DateTimePickerController = _DateTimePickerControllerBase
    with _$DateTimePickerController;

abstract class _DateTimePickerControllerBase with Store {
  @observable
  DateTime dateTime;

  @action
  setDateTime(DateTime date) {
    dateTime = date;
  }
}
