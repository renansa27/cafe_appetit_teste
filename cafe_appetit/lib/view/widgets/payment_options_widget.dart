//Radio para o usuário selecionar se o pedido já foi pago ou não.

import 'package:cafe_appetit/controller/option_selected.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PaymentOptionsWidget extends StatelessWidget {
  final int index;
  final OptionSelectedController groupValueController;
  const PaymentOptionsWidget({Key key, this.index, this.groupValueController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<String> options = ['Sim', 'Não'];
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black38,
          width: 1.0,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.0),
      ),
      width: MediaQuery.of(context).size.width - 32,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Observer(builder: (_) {
                return Radio(
                  activeColor: Color(0xffFF8822),
                  value: index,
                  groupValue: groupValueController.selectedValue,
                  onChanged: (val) {
                    groupValueController.setSelectedValue(val);
                  },
                );
              }),
              Text(
                '${options[index]}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
