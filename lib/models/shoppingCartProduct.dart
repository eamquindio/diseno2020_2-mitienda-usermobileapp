import 'package:mitienda_userapp/models/jsonUtils/base/json_convert_content.dart';
import 'package:mitienda_userapp/models/productStore.dart';

class ShoppingCartProduct with JsonConvert<ShoppingCartProduct> {
  int id;
  ProductStore product;
  int quantity;
}