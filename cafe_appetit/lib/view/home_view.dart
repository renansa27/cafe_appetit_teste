import 'package:cafe_appetit/main.dart';
import 'package:cafe_appetit/model/order_model.dart';
import 'package:flutter/material.dart';

import './order_widget.dart';

class Home extends StatelessWidget {
  final ScrollController scrollController = ScrollController();
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

  @override
  Widget build(BuildContext context) {
    final deviceHeigth = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        AppBar().preferredSize.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        elevation: 0,
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
                          'Olá, ${userController.user.name}!',
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
                          height: 24,
                        ),
                        Container(
                          height: 56.0,
                          width: deviceWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[200],
                                  offset: Offset(0, 0),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0)
                            ],
                          ),
                          child: FlatButton(
                            color: Colors.white,
                            child: Row(
                              children: [
                                Icon(Icons.add, color: Color(0xffFF8822)),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'FAZER NOVO PEDIDO',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/orderInfo');
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF8822)),
                            ),
                            /* enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFF8822)),
                            ), */
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
                    height: (deviceHeigth +
                        MediaQuery.of(context).padding.top -
                        230),
                    child: ListView.builder(
                      controller: scrollController,
                      shrinkWrap: true,
                      itemCount: listOrdersByDay.length,
                      itemBuilder: (_, int index) {
                        print('$deviceHeigth');
                        if (listOrdersByDay.length > 0) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (index == 0)
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
            ),
          ],
        ),
      ),
    );
  }
}
