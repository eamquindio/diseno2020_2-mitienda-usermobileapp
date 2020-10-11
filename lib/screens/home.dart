import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mitienda_userapp/screens/store_home.dart';
import 'package:mitienda_userapp/widgets/MenuDrawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tus tiendas cercanas"),
      ),
      drawer: MenuDrawer(),
      body: _buildBody(context)
    );
  }

  Widget _buildBody(BuildContext ctx) {
    return Column(
      children: [
        Text("aqui va el cuerpo de la pantalla"),
        ElevatedButton(
          child: Text('ir a tienda...'),
          onPressed: () => Get.to(StoreHome()),
        )
      ],
    );
  }

}