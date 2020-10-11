import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle del producto"),
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
          child: Text('volver a tienda...'),
          onPressed: () => Get.back(),
        )
      ],
    );
  }
}