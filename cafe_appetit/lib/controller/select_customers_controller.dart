//Controller do número de clientes selecionados.

import 'package:mobx/mobx.dart';
part 'select_customers_controller.g.dart';

class SelectCustumersController = _SelectCustumersControllerBase
    with _$SelectCustumersController;

abstract class _SelectCustumersControllerBase with Store {
  @observable
  int selectedCustumerQnt = 0;

  @action
  void incrementCustumer() {
    selectedCustumerQnt++;
  }

  @action
  void decrementCustumer() {
    selectedCustumerQnt--;
  }
}
