import 'package:cafe_appetit/controller/login_controller.dart';
import 'package:cafe_appetit/view/order_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'controller/carrinho_controller.dart';
import 'controller/orders_list.dart';
import 'controller/user_controller.dart';
import 'view/order_done.dart';
import 'view/order_payment.dart';
import 'view/home_view.dart';
import 'view/login_view.dart';
import 'view/order_details_view.dart';
import 'view/select_customers_view.dart';

//Instâncias globais do Mobx
final userController = UserController();
final machineController = OrdersListController();
final loginController = LoginController();
final carrinhoController = CarrinhoController();

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
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      //Linguagens suportadas, verifica e muda de acordo com o idioma do smartphone.
      //Necessário para mudar o idioma do MonthPicker
      supportedLocales: [
        const Locale('en'),
        const Locale('pt'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Café Appetit',
      theme: ThemeData(
        //Cor primária do App
        primaryColor: Color(0xffFF8822),
        //Seleciona a fonte
        fontFamily: 'Open Sans',
        //Muda as cores do select quando não está selecionado
        unselectedWidgetColor: Color(0xffFF8822),
        //Muda a cor do dia selecionado no MonthPicker
        accentColor: Color(0xffFF8822),
      ),
      //Rota inicial
      initialRoute: '/login',
      //Rotas do App
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => Home(),
        '/orderInfo': (context) => OrderInfo(),
        '/orderDetails': (context) => OrderDetails(),
        '/selectCustumers': (context) => SelectCustomers(),
        '/orderPayment': (context) => OrderPayment(),
        '/orderDone': (context) => OrderDone(),
      },
    );
  }
}
