import 'package:cafe_appetit/controller/orders_list.dart';
import 'package:cafe_appetit/main.dart';
import 'package:cafe_appetit/model/cliente_model.dart';
import 'package:cafe_appetit/model/order_list_model.dart';
import 'package:cafe_appetit/model/order_model.dart';
import 'package:cafe_appetit/model/produto_model.dart';
import 'package:flutter/material.dart';

import 'widgets/order_widget.dart';

class Home extends StatelessWidget {
  final ScrollController scrollController = ScrollController();
  final OrderListModel listOrdersByDay = OrderListModel(
    listOrder: {
      //Dia 23/10/2020
      DateTime.parse('2020-10-23'): [
        OrderModel(
          cliente: ClienteModel(name: 'Hanna Montana'),
          produtos: [
            ProdutoModel(
              produtoName: 'Cuscuz com calabresa',
              qnt: 1,
              price: 2.25,
            ),
            ProdutoModel(
              produtoName: 'Salgado',
              qnt: 1,
              price: 2.50,
            ),
          ],
        ),
        OrderModel(
          cliente: ClienteModel(name: 'Pablo Alvarez'),
          produtos: [
            ProdutoModel(
              produtoName: 'Salgado',
              qnt: 2,
              price: 2.25,
            ),
            ProdutoModel(
              produtoName: 'Pão de queijo',
              qnt: 1,
              price: 2.25,
            ),
          ],
        ),
        OrderModel(
          cliente: ClienteModel(name: 'Andreia Barros'),
          produtos: [
            ProdutoModel(
              produtoName: 'Misto quente',
              qnt: 1,
              price: 2.25,
            ),
            ProdutoModel(
              produtoName: 'Pão com carne',
              qnt: 1,
              price: 2.25,
            ),
          ],
        ),
      ],
      //Dia 22/10/2020
      DateTime.parse('2020-10-22'): [
        OrderModel(
          cliente: ClienteModel(name: 'Hanna Montana'),
          produtos: [
            ProdutoModel(
              produtoName: 'Pão de Queijo',
              qnt: 1,
              price: 2.25,
            ),
            ProdutoModel(
              produtoName: 'Pão com carne',
              qnt: 1,
              price: 2.25,
            ),
          ],
        ),
      ]
    },
  );

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
                    padding: EdgeInsets.only(left: 16, right: 16),
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
                                spreadRadius: 1.0,
                              ),
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
                      itemCount: listOrdersByDay.listOrder.length,
                      itemBuilder: (_, int index) {
                        if (listOrdersByDay.listOrder.length > 0) {
                          OrdersListController ordersListController =
                              OrdersListController();
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (index == 0)
                                SizedBox(
                                  height: 24,
                                ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  children: [
                                    Text(
                                      'Em ${listOrdersByDay.listOrder.keys.elementAt(index).day}/${listOrdersByDay.listOrder.keys.elementAt(index).month} você vendeu R\$ ${listOrdersByDay.getTotalDay()[index].toStringAsFixed(2).replaceAll('.', ',')}',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: listOrdersByDay.listOrder.values
                                      .elementAt(index)
                                      .length,
                                  itemBuilder: (_, int indexOrder) {
                                    OrderModel order = listOrdersByDay
                                        .listOrder.values
                                        .elementAt(index)
                                        .elementAt(indexOrder);
                                    while (indexOrder <
                                        listOrdersByDay.listOrder.values
                                                .elementAt(index)
                                                .length -
                                            1) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            height: 24,
                                          ),
                                          OrderWidget(
                                            orderController:
                                                ordersListController,
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
                                          orderController: ordersListController,
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
