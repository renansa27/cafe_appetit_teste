import 'package:cafe_appetit/controller/login_controller.dart';
import 'package:cafe_appetit/view/order_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'controller/orders_list.dart';
import 'controller/user_controller.dart';
import 'view/ask_payment.dart';
import 'view/home_view.dart';
import 'view/login_view.dart';
import 'view/order_details_view.dart';
import 'view/select_customers_view.dart';

//Instâncias do Mobx
final userController = UserController();
//final produtoController = ProdutoController();
final machineController = OrdersListController();
final loginController = LoginController();

Future<void> main() async {
  //Duas linhas necessárias para o funcinamento do Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Para o display ficar sempre na vertical
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('pt'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Café Appetit',
      theme: ThemeData(
        primaryColor: Color(0xffFF8822),
        fontFamily: 'Open Sans',
        //Muda as cores do select quando não está selecionado
        unselectedWidgetColor: Color(0xffFF8822),
        //Muda a cor do dia selecionado
        accentColor: Color(0xffFF8822),
        //Teste
        //canvasColor: Color(0xffFF8822),
        //cardColor: Color(0xffFF8822),
        //cursorColor: Color(0xffFF8822),
        //backgroundColor: Color(0xffFF8822),
        //bottomAppBarColor: Color(0xffFF8822),
        //buttonColor: Color(0xffFF8822),
        //dialogBackgroundColor: Color(0xffFF8822),
        //disabledColor: Color(0xffFF8822),
        //dividerColor: Color(0xffFF8822),
        //errorColor: Color(0xffFF8822),
        //focusColor: Color(0xffFF8822),
        //highlightColor: Color(0xffFF8822),
        //hintColor: Color(0xffFF8822),
        //hoverColor: Color(0xffFF8822),
        //indicatorColor: Color(0xffFF8822),
        //primaryColorDark: Color(0xffFF8822),
        //primaryColorLight: Color(0xffFF8822),
        //scaffoldBackgroundColor: Color(0xffFF8822),
        //secondaryHeaderColor: Color(0xffFF8822),
        //selectedRowColor: Color(0xffFF8822),
        //Cor da sombra
        //shadowColor: Color(0xffFF8822),
        //splashColor: Color(0xffFF8822),
        //textSelectionColor: Color(0xffFF8822),
        //textSelectionHandleColor: Color(0xffFF8822),
        //toggleableActiveColor: Color(0xffFF8822),
      ),
      initialRoute: '/askPayment',
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => Home(),
        '/orderInfo': (context) => OrderInfo(),
        '/orderDetails': (context) => OrderDetails(),
        '/selectCustumers': (context) => SelectCustomers(),
        '/askPayment': (context) => AskPayment(),
      },
    );
  }
}
