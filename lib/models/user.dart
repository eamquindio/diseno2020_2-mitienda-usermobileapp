import 'package:mitienda_userapp/models/jsonUtils/base/json_convert_content.dart';

class User with JsonConvert<User> {
  int id;
  String username;
  String phone;
  String email;
  String name;
}
