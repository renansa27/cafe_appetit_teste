//Label que contém informações de um produto específico.

import 'package:cafe_appetit/model/produto_model.dart';
import 'package:flutter/material.dart';

class OrderInfoWidgetLabel extends StatelessWidget {
  final ProdutoModel produtoModel;

  OrderInfoWidgetLabel({this.produtoModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
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
                  child: Image.asset(produtoModel.image),
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
                              produtoModel.produtoName,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      if (produtoModel.optionDescription != null)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              produtoModel.optionDescription,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54,
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
              'R\$ ${((produtoModel.price).toStringAsFixed(2)).replaceAll('.', ',')}',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
