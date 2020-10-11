import 'package:mitienda_userapp/models/jsonUtils/base/json_convert_content.dart';

class Product with JsonConvert<Product> {
  int id;
  String image;
  String name;
}