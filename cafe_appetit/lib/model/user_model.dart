//Model do usuário

import 'package:cafe_appetit/model/cliente_model.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final List<ClienteModel> listaClientes;
  UserModel({this.listaClientes, this.id, this.name, this.email});
  UserModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        email = data['email'],
        listaClientes = data['listaClientes'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'listaClientes': listaClientes,
    };
  }
}
