import 'package:flutter/material.dart';

class OrderDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffFAFAFA),
        child: Column(
          children: [
            Flexible(
              flex: 10,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 0,
                      width: 0,
                    ),
                    Column(
                      children: [
                        Image.asset('lib/assets/undraw_chef_lbjx.png'),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Pedido realizado!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 48.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Color(0xFFFF8822),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/orderInfo');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "FAZER UM NOVO PEDIDO",
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
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 48.0,
                        width: MediaQuery.of(context).size.width,
                        child: OutlineButton(
                          child: Text(
                            "VOLTAR PARA A PÁGINA INICIAL",
                            style: TextStyle(color: Color(0xffB8CC3B)),
                          ),
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(context, '/home',
                                (Route<dynamic> route) => false);
                          },
                          borderSide: BorderSide(color: Color(0xffB8CC3B)),
                          highlightColor: Color(0xffB8CC3B),
                          highlightedBorderColor: Color(0xffB8CC3B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
