//Model da lista de pedidos realizados.

import 'order_model.dart';

class OrderListModel {
  Map<DateTime, List<OrderModel>> listOrder = {};

  OrderListModel({this.listOrder});

  List<double> getTotalDay() {
    List<double> listTotal = [];
    for (int i = 0; i < listOrder.keys.length; i++) {
      double sum = 0.0;
      for (int j = 0; j < listOrder.values.elementAt(i).length; j++) {
        sum = sum + listOrder.values.elementAt(i).elementAt(j).getTotal();
      }
      listTotal.add(sum);
    }
    return listTotal;
  }
}
