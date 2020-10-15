import 'package:mobx/mobx.dart';
part 'orders_list.g.dart';

class OrdersListController = _OrdersListControllerBase
    with _$OrdersListController;

abstract class _OrdersListControllerBase with Store {
  double total = 0.0;

  @observable
  ObservableList<double> totalByDay = ObservableList<double>.of([]);

  @action
  addTotalByDay(double price) {
    //print('Adcionado valor: $price');
    totalByDay.add(price);
  }

  @computed
  double get totalDay => totalByDay.reduce((value, element) => value + element);
}
