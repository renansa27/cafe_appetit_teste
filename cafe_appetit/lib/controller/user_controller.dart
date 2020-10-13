import 'package:cafe_appetit/model/user_model.dart';
import 'package:mobx/mobx.dart';
part 'user_controller.g.dart';

class UserController = _UserControllerBase with _$UserController;

abstract class _UserControllerBase with Store {
  @observable
  UserModel user = UserModel();

  @observable
  String formName = "";

  @observable
  String formEmail = "";

  @observable
  String formPassword = "";

  @action
  setFormName(String name) {
    this.formName = name;
  }

  @action
  setFormEmail(String email) {
    this.formEmail = email;
  }

  @action
  setFormPassword(String password) {
    this.formPassword = password;
  }

  @action
  setUserModel(UserModel userModel) {
    this.user = userModel;
  }
}
