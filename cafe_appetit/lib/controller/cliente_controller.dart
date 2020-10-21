//Controller do cliente

import 'package:mobx/mobx.dart';
part 'cliente_controller.g.dart';

class ClienteController = _ClienteControllerBase with _$ClienteController;

abstract class _ClienteControllerBase with Store {
  @observable
  bool selectedCustumer = false;

  @action
  void setSelectedCustumer() {
    selectedCustumer = !selectedCustumer;
  }
}
