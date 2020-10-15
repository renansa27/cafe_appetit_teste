import 'package:cafe_appetit/model/produto_model.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
part 'carrinho_controller.g.dart';

class CarrinhoController = _CarrinhoControllerBase with _$CarrinhoController;

abstract class _CarrinhoControllerBase with Store {
  @observable
  ObservableList<ProdutoModel> lista = ObservableList<ProdutoModel>.of([]);

  @observable
  bool productSelected = false;

  @observable
  double totalCarrinho = 0.0;

  @action
  addProduto(ProdutoModel produto) {
    lista.add(produto);
  }

  @action
  setSelected() {
    productSelected = !productSelected;
  }

  @action
  addTotal(double valorAdd) {
    totalCarrinho = totalCarrinho + valorAdd;
  }

  @action
  removerTotal(double valorRemove) {
    totalCarrinho = totalCarrinho - valorRemove;
  }
}
