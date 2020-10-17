import 'package:cafe_appetit/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isHidden = true;
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _setLoading() {
    setState(() {
      loading = !loading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'lib/assets/appetit_logo.png',
                  //width: 150,
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        'Seja bem-vindo!',
                        style:
                            TextStyle(color: Color(0xffE57A1F), fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      child: Text(
                        'Nós sabemos a importância de estar sempre de barriga cheia e o quanto isso pode ajudar no seu dia.',
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          //Login
                          TextFormField(
                            //controller: loginControllerField,
                            style: TextStyle(color: Colors.black),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Digite seu e-mail';
                              }
                              return null;
                            },
                            onTap: () {
                              loginController.setLoginFocada();
                            },
                            onFieldSubmitted: (value) => {
                              loginController.setLoginFocada(),
                            },
                            decoration: InputDecoration(
                              hintText: "Insira o seu e-mail aqui",
                              labelText: loginController.showLabelLogin
                                  ? "Email"
                                  : null,
                              labelStyle: TextStyle(
                                decorationColor: Color(0x00ffaabb),
                              ),
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 16.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide: BorderSide(color: Colors.black38),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide:
                                    BorderSide(color: Color(0xffFF8822)),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffc75b20),
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            onChanged: (value) => {
                              loginController.setLogin(value),
                            },
                          ),
                          SizedBox(
                            height: 24.0,
                          ),
                          TextFormField(
                            //controller: senhaController,
                            style: TextStyle(color: Colors.black),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Digite sua senha';
                              }
                              return null;
                            },
                            onTap: () {
                              loginController.setSenhaFocada();
                            },
                            onFieldSubmitted: (value) => {
                              loginController.setSenhaFocada(),
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: _toggleVisibility,
                                icon: _isHidden
                                    ? Icon(
                                        Icons.visibility_off_outlined,
                                        color: Color(0xffFF8822),
                                      )
                                    : Icon(
                                        Icons.visibility_outlined,
                                        color: Color(0xffFF8822),
                                      ),
                              ),
                              labelText: loginController.showLabelSenha
                                  ? "Senha"
                                  : null,
                              //floatingLabelBehavior: FloatingLabelBehavior.auto,
                              hintText: "Insira a sua senha aqui",
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 16.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide: BorderSide(color: Colors.black38),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide:
                                    BorderSide(color: Color(0xffFF8822)),
                              ),
                              focusColor: Color(0xffFF8822),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffc75b20),
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            obscureText: _isHidden,
                            onChanged: (value) => {
                              loginController.setSenha(value),
                            },
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //buildTextField('Senha'),
                          SizedBox(
                            height: 40.0,
                          ),
                        ],
                      ),
                    ),
                    buildButtonContainer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButtonContainer() {
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color:
            loginController.btnLiberado ? Color(0xFFFF8822) : Color(0x77FF8822),
      ),
      child: Container(
        child: Observer(builder: (_) {
          return FlatButton(
            onPressed: loginController.btnLiberado
                ? () {
                    // If the form is valid, display a Snackbar.
                    if (_formKey.currentState.validate()) {
                      // Login user in app
                      _setLoading();
                      //Login admin@gmail.com
                      //Senha admin123
                      _auth.loginWithEmail().then(
                            (val) => {
                              _setLoading(),
                              if (val == true)
                                {
                                  Navigator.pushReplacementNamed(
                                      context, '/home'),
                                }
                              else
                                {
                                  print(
                                    val.toString(),
                                  ),
                                },
                            },
                          );
                    }
                  }
                : null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (loading)
                  Row(
                    children: [
                      Text(
                        "ENTRAR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                      ),
                    ],
                  ),
                if (!loading)
                  Text(
                    "ENTRAR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
              ],
            ),
            color: Colors.transparent,
          );
        }),
      ),
    );
  }
}
