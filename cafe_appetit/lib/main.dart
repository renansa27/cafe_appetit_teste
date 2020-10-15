import 'package:cafe_appetit/controller/login_controller.dart';
import 'package:cafe_appetit/view/order_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

import 'controller/orders_list.dart';
import 'controller/user_controller.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Café Appetit',
      theme: ThemeData(
        unselectedWidgetColor: Color(0xffFF8822),
      ),
      initialRoute: '/home',
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => Home(),
        '/orderInfo': (context) => OrderInfo(),
        '/orderDetails': (context) => OrderDetails(),
        '/selectCustumers': (context) => SelectCustomers(),
      },
    );
  }
}
