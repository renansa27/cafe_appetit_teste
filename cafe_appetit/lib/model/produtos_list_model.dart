import 'package:cafe_appetit/model/produto_model.dart';

class ProdutosList {
  String id;
  Map<String, List<ProdutoModel>> listProdutos = {};

  ProdutosList({this.id, this.listProdutos});
}
