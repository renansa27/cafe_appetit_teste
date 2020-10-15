import 'package:flutter/material.dart';

class SelectCustomers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeigth = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        AppBar().preferredSize.height;
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
          children: [
            Container(
              height: deviceHeigth,
              width: deviceWidth,
            ),
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
      bottomNavigationBar:
          /* Observer(
        builder: (_) {
          return  */
          Row(
        children: [
          //if (carrinhoController.productSelected)
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[600],
                  offset: Offset(1, 0),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
              color: Color(0xFFFF8822),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 68,
            width: MediaQuery.of(context).size.width,
            /* child: Observer(builder: (_) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total: R\$ ${carrinhoController.totalCarrinho.toStringAsFixed(2).replaceAll('.', ',')}',
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
                            Navigator.pushNamed(context, '/selectCustumers');
                          },
                        ),
                      ],
                    );
                  }), */
          ),
        ],
      ),
      /* },
      ), */
    );
  }
}
