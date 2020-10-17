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
  int quantidadeCliente = 1;

  @observable
  bool selectedProduct = false;

  @action
  changeSelectedProduct() {
    selectedProduct = !selectedProduct;
  }

  @action
  setOrderInfoModel(ProdutoModel produtoModel) {
    this.produtoModel = produtoModel;
  }

  @action
  setId(index) {
    this.id = index;
  }

  @action
  incrementQtdCliente() {
    this.quantidadeCliente++;
  }

  @action
  decrementQtdCliente() {
    if (this.quantidadeCliente > 1) {
      this.quantidadeCliente--;
    }
  }

  @computed
  double get totalCompra =>
      quantidadeCliente *
      double.parse(
        produtoModel.price.toStringAsFixed(2),
      );
}
