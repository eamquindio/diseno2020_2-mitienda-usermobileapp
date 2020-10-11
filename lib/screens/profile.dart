import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mitienda_userapp/screens/home.dart';
import 'package:mitienda_userapp/screens/store_home.dart';
import 'package:mitienda_userapp/widgets/MenuDrawer.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi perfil"),
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
          child: Text('home...'),
          onPressed: () => Get.to(Home()),
        )
      ],
    );
  }

}