import 'package:cafe_appetit/controller/produto_controller.dart';
import 'package:cafe_appetit/model/produto_model.dart';
import 'package:cafe_appetit/model/produtos_list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../main.dart';
import 'widgets/order_info_widget_button.dart';

class OrderInfo extends StatelessWidget {
  bool verificaProdutoLista(List<ProdutoController> lista, produto) {
    bool exist = false;
    lista.forEach((element) {
      if (produto.produtoName == element.produtoModel.produtoName) {
        exist = true;
      }
    });
    return exist;
  }

  @override
  Widget build(BuildContext context) {
    final ProdutosList listOrdersByDay = ProdutosList(
      listProdutos: {
        'Cuzcus': [
          ProdutoModel(
            id: 0,
            image: 'lib/assets/cuzcus_simples.png',
            produtoName: 'Cuzcus simples',
            price: 2.25,
            qnt: 0,
            optionDescription: 'milho ou arroz',
            options: {0: 'Cuscuz de milho', 1: 'Cuscuz de arroz'},
          ),
          ProdutoModel(
            id: 1,
            image: 'lib/assets/cuzcus_completo.png',
            produtoName: 'Cuzcus completo',
            price: 3.25,
            qnt: 0,
            optionDescription: 'milho ou arroz',
            options: {0: 'Cuscuz de milho', 1: 'Cuscuz de arroz'},
          ),
        ],
        'Pães': [
          ProdutoModel(
            id: 2,
            image: 'lib/assets/pao_caseiro.png',
            produtoName: 'Pão Caseiro',
            price: 2.25,
            qnt: 0,
          ),
          ProdutoModel(
            id: 3,
            image: 'lib/assets/pao_caseiro_completo.png',
            produtoName: 'Pão Caseiro completo',
            price: 3.25,
            qnt: 0,
          ),
          ProdutoModel(
            id: 4,
            image: 'lib/assets/misto_quente.png',
            produtoName: 'Misto quente',
            price: 3.00,
            qnt: 0,
          ),
          ProdutoModel(
            id: 5,
            image: 'lib/assets/lingua_de_sogra.png',
            produtoName: 'Lingua de sogra (pq.)',
            price: 2.00,
            qnt: 0,
          ),
          ProdutoModel(
            id: 6,
            image: 'lib/assets/lingua_de_sogra.png',
            produtoName: 'Lingua de sogra (gr.)',
            price: 3.00,
            qnt: 0,
          ),
        ],
      },
    );
    final deviceWidth = MediaQuery.of(context).size.width;
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
            Navigator.pushNamedAndRemoveUntil(
                context, '/home', ((Route<dynamic> route) => false));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
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
                        SizedBox(
                          height: 24,
                        ),
                        TextField(
                          cursorColor: Color(0xffFF8822),
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
                            //focusColor: Color(0xffFF8822),
                          ),
                          //onTap: () {},
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: listOrdersByDay.listProdutos.length,
                    itemBuilder: (_, int index) {
                      String categoriaProduto =
                          listOrdersByDay.listProdutos.keys.elementAt(index);
                      List<ProdutoModel> produtos =
                          listOrdersByDay.listProdutos.values.elementAt(index);
                      if (listOrdersByDay.listProdutos.length > 0) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 23,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                '$categoriaProduto',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Observer(builder: (_) {
                              return ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: produtos?.length,
                                itemBuilder: (_, int indexProduto) {
                                  ProdutoModel produto = produtos[indexProduto];
                                  ProdutoController produtoController =
                                      ProdutoController();
                                  bool existOnList = verificaProdutoLista(
                                      carrinhoController.lista, produto);
                                  if (existOnList) {
                                    carrinhoController.lista.forEach((element) {
                                      if (element.produtoModel.produtoName ==
                                          produto.produtoName) {
                                        produtoController.setProdutoModel(
                                            element.produtoModel);
                                      }
                                    });
                                  } else {
                                    produtoController = ProdutoController();
                                    produtoController.setProdutoModel(produto);
                                    carrinhoController
                                        .addList(produtoController);
                                  }
                                  while (indexProduto < produtos.length - 1) {
                                    return Column(
                                      children: [
                                        OrderInfoWidgetButton(
                                          carrinhoController:
                                              carrinhoController,
                                          produtoController: produtoController,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                      ],
                                    );
                                  }
                                  return Column(
                                    children: [
                                      OrderInfoWidgetButton(
                                        carrinhoController: carrinhoController,
                                        produtoController: produtoController,
                                      ),
                                      SizedBox(
                                        height: 24,
                                      ),
                                      Divider(),
                                    ],
                                  );
                                },
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
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return Row(
          children: [
            if (carrinhoController?.productSelected)
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
                  color: Color(0xFFFF8822),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 68,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      //'Total: R\$ ${carrinhoController.total.toStringAsFixed(2).replaceAll('.', ',')}',
                      'Total: R\$ ${carrinhoController.valorTotal.toStringAsFixed(2).replaceAll('.', ',')}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      child: Row(
                        children: [
                          Text(
                            'Avançar',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/selectCustumers');
                      },
                    ),
                  ],
                ),
              ),
            /* Container(
                  height: 0,
                  width: 0,
                ), */
          ],
        );
      }),
    );
  }
}
