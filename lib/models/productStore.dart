import 'package:mitienda_userapp/models/jsonUtils/base/json_convert_content.dart';
import 'package:mitienda_userapp/models/category.dart';
import 'package:mitienda_userapp/models/product.dart';
import 'package:mitienda_userapp/models/store.dart';

class ProductStore with JsonConvert<ProductStore> {
  int id;
  Product product;
  int stock;
  double price;
  Category category;
  Store store;
}