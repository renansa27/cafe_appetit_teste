import 'package:cafe_appetit/model/order_model.dart';
import 'package:flutter/material.dart';

class OrderWidget extends StatelessWidget {
  final Order order;

  OrderWidget({this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      child: Row(
        children: [
          ClipOval(
            child: Image.asset('lib/assets/avatar.png'),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            width: 272,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      order.customerName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'R\$ ${((order.price).toStringAsFixed(2)).replaceAll('.', ',')}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order.order,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
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
