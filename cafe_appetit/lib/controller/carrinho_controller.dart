//Controller do carrinho

import 'package:cafe_appetit/controller/produto_controller.dart';
import 'package:mobx/mobx.dart';
part 'carrinho_controller.g.dart';

class CarrinhoController = _CarrinhoControllerBase with _$CarrinhoController;

abstract class _CarrinhoControllerBase with Store {
  @observable
  ObservableList<ProdutoController> lista =
      ObservableList<ProdutoController>.of([]);

  @observable
  bool productSelected = false;

  @observable
  double totalCarrinho = 0.0;

  @action
  updateProdutoController(ProdutoController produtoController) {
    for (int i = 0; i < lista.length; i++) {
      if (lista[i].produtoModel.produtoName ==
          produtoController.produtoModel.produtoName) {
        lista[i] = produtoController;
        var aux = lista;
        lista = aux;
      }
    }
  }

  @action
  addList(ProdutoController produtoController) {
    lista.add(produtoController);
  }

  @observable
  double somatorio = 0.0;

  @computed
  double get valorTotal => lista
      .where((element) => element.produtoModel.qnt > 0)
      .map((e) => e.totalCompra)
      .reduce((value, element) => value += element);

  @action
  void somatorioTotal() {
    this.somatorio = 0.0;
    this.lista.forEach(
      (element) {
        this.somatorio = this.somatorio + element.totalCompra;
      },
    );
  }

  @action
  setSelected() {
    productSelected = !productSelected;
  }

  @computed
  double get total => lista
      .map((controller) => controller.calculaTotalByProductModel())
      .reduce((value, element) => value += element);
}
