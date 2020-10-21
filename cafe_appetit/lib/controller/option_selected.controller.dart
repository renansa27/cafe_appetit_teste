//Controller das opções, tem o controle do index da opção selecionada pelo o usuário

import 'package:mobx/mobx.dart';
part 'option_selected.controller.g.dart';

class OptionSelectedController = _OptionSelectedControllerBase
    with _$OptionSelectedController;

abstract class _OptionSelectedControllerBase with Store {
  @observable
  int selectedValue;

  @action
  setSelectedValue(int value) {
    this.selectedValue = value;
  }
}
