//Widget responsável pela view das opções a serem selecionadas pelo usuário

import 'package:cafe_appetit/controller/option_selected.controller.dart';
import 'package:cafe_appetit/controller/produto_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class OptionSelectorWidget extends StatelessWidget {
  final int index;
  final ProdutoController produtoController;
  final OptionSelectedController groupValueController;
  const OptionSelectorWidget(
      {Key key, this.index, this.produtoController, this.groupValueController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                '${produtoController.produtoModel.options.values.elementAt(index)}',
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
