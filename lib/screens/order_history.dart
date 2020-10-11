import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mitienda_userapp/screens/order_detail.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Historial de ordenes"),
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back() ),
        ),
        body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext ctx) {
    return Column(
      children: [
        Text("aqui va el cuerpo de la pantalla"),
        ElevatedButton(
          child: Text('Detalle de una orden...'),
          onPressed: () => Get.to(OrderDetail()),
        )
      ],
    );
  }
}