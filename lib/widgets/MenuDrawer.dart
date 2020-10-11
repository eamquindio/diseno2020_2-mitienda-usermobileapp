import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mitienda_userapp/screens/home.dart';
import 'package:mitienda_userapp/screens/order_history.dart';
import 'package:mitienda_userapp/screens/profile.dart';

class MenuDrawer  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildDrawer(context);
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Ashish Rawat"),
            accountEmail: Text("ashishrawat2911@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor:
              Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,
              child: Text(
                "A",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(Home()),
          ),
          ListTile(
            title: Text("Historial de ordenes"),
            leading: Icon(Icons.history),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(OrderHistory()),
          ),
          ListTile(
            title: Text("Perfil"),
            leading: Icon(Icons.person_pin_sharp),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Get.to(Profile()),

          ),
        ],
      ),
    );
  }

}