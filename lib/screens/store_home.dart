import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mitienda_userapp/screens/product_detail.dart';
import 'package:mitienda_userapp/screens/shopping_cart.dart';
import 'package:mitienda_userapp/widgets/MenuDrawer.dart';

class StoreHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tienda"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () =>Get.to(ShoppingCart()),
                child: Icon(Icons.shopping_cart),
              )
          ),
        ],
      ),
      body: _buildBody(context),
      drawer: MenuDrawer(),
    );
  }

  Widget _buildBody(BuildContext ctx) {
    return Column(
      children: [
        Text("aqui va el cuerpo de la pantalla"),
        ElevatedButton(
          child: Text('detalle de producto'),
          onPressed: () => Get.to(ProductDetail()),
        )
      ],
    );
  }
}