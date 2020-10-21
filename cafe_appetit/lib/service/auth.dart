//Classe responsável pela autenticação do usuário no Firebase

import 'package:cafe_appetit/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../main.dart';
import 'connection.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final ConnectionFirebase _conncetionFirebase = ConnectionFirebase();
  UserModel _currentUser;
  UserModel get currentUser => _currentUser;

  Future loginWithEmail() async {
    try {
      var authResult = await _firebaseAuth.signInWithEmailAndPassword(
        email: loginController.login,
        password: loginController.senha,
      );
      await _populateCurrentUser(authResult.user);
      return true;
    } catch (e) {
      return e;
    }
  }

  Future<String> signUpWithEmail() async {
    //Manda um email de verificação:
    //await authResult.user.sendEmailVerification();
    //Login = admin@gmail.com
    //Password = admin123
    try {
      UserCredential authResult =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: userController.formEmail,
        password: userController.formPassword,
      );
      // create a new user profile on firestore
      _currentUser = UserModel(
        id: authResult.user.uid,
        name: "Alessandra",
        email: userController.formEmail,
      );
      await _conncetionFirebase.createUser(_currentUser);
      return "Usuário cadastrado";
    } catch (e) {
      return e.message;
    }
  }

  Future<bool> isUserLoggedIn() async {
    var user = _firebaseAuth.currentUser;
    bool res = await _populateCurrentUser(user);
    return res;
  }

  Future _populateCurrentUser(User user) async {
    if (user != null) {
      _currentUser = await _conncetionFirebase.getUser(user.uid);
      userController.setUserModel(_currentUser);
      return true;
    } else {
      return false;
    }
  }
}
