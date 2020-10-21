//View de um cliente específico.

import 'package:cafe_appetit/controller/cliente_controller.dart';
import 'package:cafe_appetit/controller/select_customers_controller.dart';
import 'package:cafe_appetit/model/cliente_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SelectedCustumerWidget extends StatelessWidget {
  final SelectCustumersController selectCustumersController;
  final ClienteController clienteController;
  final ClienteModel clienteModel;

  SelectedCustumerWidget(
      {this.selectCustumersController,
      this.clienteController,
      this.clienteModel});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        decoration: BoxDecoration(
          //Verifica se o cliente foi selecionado, mudando a cor do seu container
          color: clienteController.selectedCustumer
              ? Color(0xffFF8822)
              : Colors.white,
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200],
              offset: Offset(0, 0),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width - 32,
        child: RaisedButton(
          elevation: 0,
          color: clienteController.selectedCustumer
              ? Color(0xffFF8822)
              : Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.asset(clienteModel.image),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 184,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                clienteModel.name,
                                style: TextStyle(
                                  color: clienteController.selectedCustumer
                                      ? Colors.white
                                      : Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Incrementa/Decrementa o contador de clientes selecionados.
          //Muda o valor da booleana que controla se o cliente específico está ou não selecionado.
          onPressed: () {
            clienteController.selectedCustumer
                ? selectCustumersController.decrementCustumer()
                : selectCustumersController.incrementCustumer();
            clienteController.setSelectedCustumer();
          },
        ),
      );
    });
  }
}
