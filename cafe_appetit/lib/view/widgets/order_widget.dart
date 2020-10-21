//Label para mostrar o histórico de um pedido de um cliente específico.

import 'package:cafe_appetit/controller/orders_list.dart';
import 'package:cafe_appetit/model/order_model.dart';
import 'package:flutter/material.dart';

class OrderWidget extends StatelessWidget {
  final OrderModel order;
  final OrdersListController orderController;

  OrderWidget({this.order, this.orderController});

  @override
  Widget build(BuildContext context) {
    final total = order.getTotal();
    orderController.addTotalByDay(total);
    final description = order.getDescription();
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipOval(
            child: Image.asset('lib/assets/avatar.png'),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 100,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      order.cliente.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'R\$ ${((total).toStringAsFixed(2)).replaceAll('.', ',')}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        description,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
