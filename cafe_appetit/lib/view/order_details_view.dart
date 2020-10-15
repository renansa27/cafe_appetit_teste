import 'package:cafe_appetit/controller/carrinho_controller.dart';
import 'package:cafe_appetit/controller/option_selected.controller.dart';
import 'package:cafe_appetit/controller/produto_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'widgets/option_selector_widget.dart';
import 'widgets/order_info_widget_label.dart';

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //0 -> productController || 1-> carrinhoController
    List args = ModalRoute.of(context).settings.arguments;
    ProdutoController produtoController = args[0];
    CarrinhoController carrinhoController = args[1];
    OptionSelectedController optionSelectedController =
        OptionSelectedController();
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
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
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Detalhes do pedido',
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
                          "Caso queira, aproveite para adicionar alguma observção para este pedido.",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        OrderInfoWidgetLabel(
                          produtoModel: produtoController.produtoModel,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Divider(),
                        SizedBox(
                          height: 24,
                        ),
                        if (produtoController.produtoModel.options != null)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Opções',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Escolha uma das opções de massas disponíveis abaixo.',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  if (produtoController.produtoModel.options != null)
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: produtoController.produtoModel.options.length,
                      itemBuilder: (_, int index) {
                        return Column(
                          children: [
                            OptionSelectorWidget(
                              index: index,
                              groupValueController: optionSelectedController,
                              produtoController: produtoController,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        );
                      },
                    ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Observações',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Observer(builder: (_) {
                      return TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: "Deseja adicionar alguma obs.?",
                          hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide: BorderSide(color: Colors.black38),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide: BorderSide(color: Color(0xffFF8822)),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffc75b20),
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        onChanged: (value) {},
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Observer(
        builder: (_) {
          return Row(
            children: [
              if (optionSelectedController.selectedValue != null ||
                  produtoController.produtoModel.options == null)
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[600],
                        offset: Offset(1, 0),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                    color: Color(0xFFFAFAFA),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.remove,
                                color: produtoController.quantidadeCliente == 1
                                    ? null
                                    : Color(0xffFF8822),
                              ),
                              onPressed: produtoController.quantidadeCliente ==
                                      1
                                  ? null
                                  : () {
                                      produtoController.decrementQtdCliente();
                                      carrinhoController.removerTotal(
                                          produtoController.produtoModel.price);
                                    }),
                          SizedBox(
                            width: 20,
                          ),
                          Text('${produtoController.quantidadeCliente}'),
                          SizedBox(
                            width: 20,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Color(0xffFF8822),
                              ),
                              onPressed: () {
                                produtoController.incrementQtdCliente();
                              }),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffFF8822),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            if (!produtoController.selectedProdutc) {
                              produtoController.changeSelectedProdutc();
                            }
                            if (!carrinhoController.productSelected) {
                              carrinhoController.setSelected();
                            }
                            carrinhoController
                                .addTotal(produtoController.totalCompra);
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 13,
                              horizontal: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Adicionar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'R\$ ${produtoController.totalCompra.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
