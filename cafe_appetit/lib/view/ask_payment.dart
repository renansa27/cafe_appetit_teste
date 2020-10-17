import 'package:cafe_appetit/controller/calendar_controller.dart';
import 'package:cafe_appetit/controller/date_picker_controller.dart';
import 'package:cafe_appetit/controller/option_selected.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'widgets/payment_options_widget.dart';

class AskPayment extends StatelessWidget {
  final CalendarController calendarController = CalendarController();
  final OptionSelectedController optionSelectedController =
      OptionSelectedController();
  final DateTimePickerController dateTimePickerController =
      DateTimePickerController();
  String getDayString(int numDay) {
    switch (numDay) {
      case 0:
        return 'Domingo';
        break;
      case 1:
        return 'Segunda-feira';
        break;
      case 2:
        return 'Terça-feira';
        break;
      case 3:
        return 'Quarta-feira';
        break;
      case 4:
        return 'Quinta-feira';
        break;
      case 5:
        return 'Sexta-feira';
        break;
      default:
        return 'Sábado';
        break;
    }
  }

  String getMonthString(int numMonth) {
    switch (numMonth) {
      case 1:
        return 'Janeiro';
        break;
      case 2:
        return 'Fevereiro';
        break;
      case 3:
        return 'Março';
        break;
      case 4:
        return 'Abril';
        break;
      case 5:
        return 'Maio';
        break;
      case 6:
        return 'Junho';
        break;
      case 7:
        return 'Julho';
        break;
      case 8:
        return 'Agosto';
        break;
      case 9:
        return 'Setembro';
        break;
      case 10:
        return 'Outubro';
        break;
      case 11:
        return 'Novembro';
        break;
      default:
        return 'Dezembro';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
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
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              'Finalizar pedido',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '3 de 3',
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
                              width: MediaQuery.of(context).size.width - 32,
                              decoration: BoxDecoration(
                                color: Color(0xffFF8822),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'O cliente já pagou?',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (_, int index) {
                      return Column(
                        children: [
                          PaymentOptionsWidget(
                            index: index,
                            groupValueController: optionSelectedController,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ],
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Em que data o pedido foi realizado?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Observer(builder: (_) {
                      return TextFormField(
                        key: Key('formTextField'),
                        controller: calendarController.isConfirmedDate
                            ? TextEditingController(
                                text: calendarController.dateFormated)
                            : null,
                        style: TextStyle(color: Colors.black),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Escolha uma data';
                          }
                          return null;
                        },
                        readOnly: true,
                        onTap: () {
                          calendarController.setShowDatePicker();
                        },
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.today),
                          suffixIcon: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xffff8822),
                          ),
                          hintText: "This is a data input.",
                          labelText: calendarController.isConfirmedDate
                              ? "Data"
                              : "Selecione uma data",
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
                            borderSide: BorderSide(color: Color(0xffFF8822)),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffc75b20),
                            ),
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        showCursor: false,
                      );
                    }),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Observer(builder: (_) {
                      return Container(
                        height: 48.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color:
                              optionSelectedController.selectedValue != null &&
                                      calendarController.isConfirmedDate
                                  ? Color(0xFFFF8822)
                                  : Color(0x77FF8822),
                        ),
                        child: Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
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
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            //top: 20,
            child: Observer(builder: (_) {
              return Column(
                children: [
                  if (calendarController.showDatePicker)
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width - 32,
                      height: 453,
                      child: Observer(
                        builder: (_) {
                          return Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${getDayString(calendarController.weekDay)}, ${calendarController.day} de ${getMonthString(calendarController.month)}',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    DropdownButton<String>(
                                      iconEnabledColor: Color(0xffff8822),
                                      iconDisabledColor: Color(0xffff8822),
                                      underline: Container(
                                        height: 0,
                                        width: 0,
                                      ),
                                      value: calendarController.year,
                                      items: <String>[
                                        '2020',
                                        '2021',
                                        '2022',
                                        '2023',
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: SizedBox(
                                            height: 17,
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                color: Color(0xffff8822),
                                              ),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        calendarController.setYear(value);
                                        print(calendarController.year);
                                      },
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 285,
                                  width: MediaQuery.of(context).size.width,
                                  child: MonthPicker(
                                    lastDate: DateTime.parse('2023-12-31'),
                                    onChanged: (value) {
                                      //print(value);
                                      calendarController.setSelectedDate(value);
                                    },
                                    selectedDate:
                                        calendarController.selectedDate,
                                    firstDate: DateTime.parse('2020-01-01'),
                                  ),
                                  /* child: CalendarDatePicker(
                                    initialDate: calendarController.selectedDate,
                                    lastDate: DateTime.parse('2023-12-31'),
                                    /* onChanged: (value) {
                                      print(value);
                                      calendarController.setSelectedDate(value);
                                    }, */
                                    currentDate: calendarController.selectedDate,
                                    //selectedDate: calendarController.selectedDate,
                                    firstDate: DateTime.parse('2020-01-01'),
                                    onDateChanged: (DateTime value) {
                                      print(value);
                                      calendarController.setSelectedDate(value);
                                    },
                                  ), */
                                ),
                                SizedBox(
                                  height: 26,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: Color(0xffff8822),
                                      ),
                                      width: MediaQuery.of(context).size.width /
                                          2.8,
                                      child: FlatButton(
                                        child: Text(
                                          'CONFIRMAR',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          calendarController
                                              .setShowDatePicker();
                                          calendarController.setConfirmedDate();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
