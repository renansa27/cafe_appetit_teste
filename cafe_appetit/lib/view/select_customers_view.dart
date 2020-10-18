import 'package:cafe_appetit/controller/cliente_controller.dart';
import 'package:cafe_appetit/controller/select_customers_controller.dart';
import 'package:cafe_appetit/model/cliente_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'widgets/selected_custumer_widget.dart';

class SelectCustomers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SelectCustumersController selectCustumersController =
        SelectCustumersController();
    final List<ClienteModel> listaClientes = [
      ClienteModel(
        image: 'lib/assets/JustinePhoto.png',
        name: 'Justine Marshall',
      ),
      ClienteModel(
        image: 'lib/assets/BairamPhoto.png',
        name: 'Bairam Frootan',
      ),
      ClienteModel(
        image: 'lib/assets/FrootanPhoto.png',
        name: 'Bairam Frootan',
      ),
    ];
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffFF8822),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informações para o pedido',
                    style: TextStyle(
                      color: Color(0xffE57A1F),
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 2,
                    width: 240,
                    color: Color(0xffB8CC3B),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Preencha as informações abaixo para concluir o pedido.",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Para quem você está vendendo?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '2 de 3',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 8,
                        width: 2 * (deviceWidth - 32) / 3,
                        decoration: BoxDecoration(
                          color: Color(0xffFF8822),
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                      ),
                      Container(
                        height: 8,
                        width: (deviceWidth - 32) / 3,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    cursorColor: Color(0xffFF8822),
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFF8822)),
                      ),
                      hintText: 'Digite a sua busca aqui',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(
                          0xffFF8822,
                        ),
                      ),
                      focusColor: Color(0xffFF8822),
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Meus Clientes',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: listaClientes.length,
                          itemBuilder: (_, int index) {
                            if (listaClientes.length > 0) {
                              ClienteModel cliente = listaClientes[index];
                              ClienteController clienteController =
                                  ClienteController();
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SelectedCustumerWidget(
                                      selectCustumersController:
                                          selectCustumersController,
                                      clienteController: clienteController,
                                      clienteModel: cliente),
                                  SizedBox(
                                    height: 8,
                                  ),
                                ],
                              );
                            }
                            return Container(
                              height: 0,
                              width: 0,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /* Container(
              width: MediaQuery.of(context).size.width - 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    backgroundColor: Color(0xffff8822),
                    onPressed: () {},
                  ),
                ],
              ),
            ), */
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xffff8822),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: Observer(builder: (_) {
        return Row(
          children: [
            if (selectCustumersController.selectedCustumerQnt > 0)
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      offset: Offset(0, 0),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                  color: Color(0xFFFF8822),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 56,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      selectCustumersController.selectedCustumerQnt == 1
                          ? '1 cliente selecionado'
                          : '${selectCustumersController.selectedCustumerQnt} clientes selecionados',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      child: Row(
                        children: [
                          Text(
                            'Avançar',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/orderPayment');
                      },
                    ),
                  ],
                ),
              ),
            Container(
              width: 0,
              height: 0,
            )
          ],
        );
      }),
    );
  }
}
