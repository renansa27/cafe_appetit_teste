//Controller do produto, contém informações de um produto determinado.

import 'package:cafe_appetit/model/produto_model.dart';
import 'package:mobx/mobx.dart';
part 'produto_controller.g.dart';

class ProdutoController = _ProdutoControllerBase with _$ProdutoController;

abstract class _ProdutoControllerBase with Store {
  @observable
  ProdutoModel produtoModel = ProdutoModel();

  @observable
  int id;

  @observable
  int quantidade = 1;

  @observable
  bool selectedProduct = false;

  @observable
  String observacoes = '';

  @action
  void setObervacoes(String observacoes) {
    this.observacoes = observacoes;
  }

  @action
  changeSelectedProduct() {
    selectedProduct = !selectedProduct;
  }

  @action
  setProdutoModel(ProdutoModel produtoModel) {
    this.produtoModel = produtoModel;
  }

  @action
  changeQntProdutoModel(int qnt) {
    this.produtoModel.qnt = qnt;
  }

  @action
  setProdutoModelQuantidade(int quantidadeRecebida) {
    this.produtoModel.qnt = quantidadeRecebida;
  }

  @action
  incrementQtd() {
    this.quantidade++;
  }

  @action
  decrementQtd() {
    if (this.quantidade > 1) {
      this.quantidade--;
    }
  }

  double calculaTotalByProductModel() {
    return produtoModel.qnt * produtoModel.price;
  }

  @computed
  double get totalCompra =>
      quantidade *
      double.parse(
        produtoModel.price.toStringAsFixed(2),
      );
}
