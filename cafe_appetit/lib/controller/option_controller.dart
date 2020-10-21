//Controller da seleção dos produtos, tem o controle de qual produto foi selecionado pelo o usuário

import 'package:mobx/mobx.dart';
part 'option_controller.g.dart';

class OptionController = _OptionControllerBase with _$OptionController;

abstract class _OptionControllerBase with Store {
  @observable
  int selectedIndex;

  @observable
  bool selectedProduct = false;

  @action
  void changeSelectedProduct() {
    selectedProduct = !selectedProduct;
  }

  @action
  void setSelectedIndex(int index) {
    selectedIndex = index;
  }
}
