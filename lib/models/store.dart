import 'package:mitienda_userapp/models/jsonUtils/base/json_convert_content.dart';

class Store with JsonConvert<Store> {
  int id;
  String name;
  String owner;
  String address;
  String image;
  bool delivery;
  String phone;
  String email;
  String password;
  bool open;
}
