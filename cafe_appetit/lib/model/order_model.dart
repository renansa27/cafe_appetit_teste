import 'package:cafe_appetit/model/cliente_model.dart';
import 'package:cafe_appetit/model/produto_model.dart';

class OrderModel {
  ClienteModel cliente;
  List<ProdutoModel> produtos = [];

  OrderModel({this.cliente, this.produtos});

  double getTotal() {
    double total = 0.0;
    produtos.forEach((produto) {
      total = total + (produto.price * produto.qnt);
    });
    return total;
  }

  String getDescription() {
    String description = '';
    for (int i = 0; i < produtos.length; i++) {
      if (i != produtos.length - 1) {
        description += '${produtos[i].qnt}x ${produtos[i].produtoName}, ';
      } else {
        description += '${produtos[i].qnt}x ${produtos[i].produtoName}.';
      }
    }
    return description;
  }
}
