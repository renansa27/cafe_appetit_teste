class UserModel {
  final String id;
  final String name;
  final String email;
  UserModel({this.id, this.name, this.email});
  UserModel.fromData(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        email = data['email'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }
}
