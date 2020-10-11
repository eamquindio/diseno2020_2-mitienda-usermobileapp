import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrito de compras"),
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back() ),
      ),
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext ctx) {
    return Container(
      child: Text("aqui va el cuerpo de la pantalla"),
    );
  }
}