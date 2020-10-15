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
          Row(
            children: [
              ClipOval(
                child: Image.asset(produtoModel.image),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                width: 184,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          produtoModel.produtoName,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
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
                                color: Colors.black54),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            'R\$ ${((produtoModel.price).toStringAsFixed(2)).replaceAll('.', ',')}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
