import 'package:cafe_appetit/controller/carrinho_controller.dart';
import 'package:cafe_appetit/controller/produto_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class OrderInfoWidgetButton extends StatelessWidget {
  final ProdutoController produtoController;
  final CarrinhoController carrinhoController;

  OrderInfoWidgetButton({this.produtoController, this.carrinhoController});

  @override
  Widget build(BuildContext context) {
    //final OrderInfoModel order = ModalRoute.of(context).settings.arguments;
    return FlatButton(
      child: Observer(builder: (_) {
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: produtoController.selectedProduct
                ? Color(0xffFF8822)
                : Colors.white,
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
          width: MediaQuery.of(context).size.width - 32,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 8,
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(produtoController.produtoModel.image),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  produtoController.produtoModel.produtoName,
                                  style: TextStyle(
                                    color: produtoController.selectedProduct
                                        ? Colors.white
                                        : Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          if (produtoController
                                  .produtoModel.optionDescription !=
                              null)
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  produtoController
                                      .produtoModel.optionDescription,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: produtoController.selectedProduct
                                        ? Colors.white
                                        : Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: Text(
                  'R\$ ${((produtoController.produtoModel.price).toStringAsFixed(2)).replaceAll('.', ',')}',
                  style: TextStyle(
                    color: produtoController.selectedProduct
                        ? Colors.white
                        : Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
      onPressed: () {
        Navigator.pushNamed(context, '/orderDetails',
            arguments: [produtoController, carrinhoController]);
      },
    );
  }
}
