import 'package:cafe_appetit/model/order_model.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'order_widget.dart';

class OrderInfo extends StatefulWidget {
  @override
  _OrderInfoState createState() => _OrderInfoState();
}

class _OrderInfoState extends State<OrderInfo> {
  @override
  Widget build(BuildContext context) {
    final List<List<Order>> listOrdersByDay = [
      [
        Order(
          customerName: 'Hanna Montana',
          price: 5.5,
          order: '1x Cuscuz com calabresa, 1x s...',
        ),
        Order(
          customerName: 'Hanna Montana',
          price: 5.5,
          order: '2x Cuscuz com calabresa, 3x s...',
        ),
        Order(
          customerName: 'Hanna Montana',
          price: 5.5,
          order: '2x Cuscuz com calabresa, 4x s...',
        ),
      ],
      [
        Order(
          customerName: 'Hanna Montana',
          price: 5.5,
          order: '2x Cuscuz com calabresa, 2x s...',
        ),
        Order(
          customerName: 'Hanna Montana',
          price: 5.5,
          order: '2x Cuscuz com calabresa, 2x s...',
        ),
        Order(
          customerName: 'Hanna Montana',
          price: 5.5,
          order: '2x Cuscuz com calabresa, 2x s...',
        ),
        Order(
          customerName: 'Hanna Montana',
          price: 5.5,
          order: '2x Cuscuz com calabresa, 2x s...',
        ),
        Order(
          customerName: 'Hanna Montana',
          price: 5.5,
          order: '2x Cuscuz com calabresa, 2x s...',
        ),
      ]
    ];
    final deviceHeigth = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        AppBar().preferredSize.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffFF8822),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Informações para o pedido',
                          style: TextStyle(
                            color: Color(0xffE57A1F),
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 2,
                          width: 240,
                          color: Color(0xffB8CC3B),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Preencha as informações abaixo para concluir o pedido.",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'O que você está vendendo?',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '1 de 3',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 8,
                              width: (deviceWidth - 32) / 3,
                              decoration: BoxDecoration(
                                color: Color(0xffFF8822),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                ),
                              ),
                            ),
                            Container(
                              height: 8,
                              width: 2 * (deviceWidth - 32) / 3,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(100),
                                  bottomRight: Radius.circular(100),
                                ),
                              ),
                            ),
                          ],
                        ),
                        /* child: LinearProgressIndicator(
                            minHeight: 8,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xffFF8822)),
                            backgroundColor: Colors.black12,
                            value: 0.3,
                          ), */
                        SizedBox(
                          height: 24,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF8822)),
                            ),
                            hintText: 'Digite a sua busca aqui',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(
                                0xffFF8822,
                              ),
                            ),
                            focusColor: Color(0xffFF8822),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height:
                        deviceHeigth - 197 + MediaQuery.of(context).padding.top,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: listOrdersByDay.length,
                      itemBuilder: (_, int index) {
                        print('$deviceHeigth');
                        if (listOrdersByDay.length > 0) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  'Em 23/10 você vendeu',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              /* SizedBox(
                              height: 24,
                            ), */
                              ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: listOrdersByDay[index].length,
                                  itemBuilder: (_, int indexOrder) {
                                    Order order =
                                        listOrdersByDay[index][indexOrder];
                                    while (indexOrder <
                                        listOrdersByDay[index].length - 1) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            height: 24,
                                          ),
                                          OrderWidget(
                                            order: order,
                                          ),
                                          SizedBox(
                                            height: 24,
                                          ),
                                          Divider(),
                                        ],
                                      );
                                    }
                                    return Column(
                                      children: [
                                        SizedBox(
                                          height: 24,
                                        ),
                                        OrderWidget(
                                          order: order,
                                        ),
                                        SizedBox(
                                          height: 24,
                                        ),
                                      ],
                                    );
                                  }),
                            ],
                          );
                        }
                        return Container(
                          height: 0,
                          width: 0,
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
