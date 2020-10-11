import 'package:mitienda_userapp/models/jsonUtils/base/json_convert_content.dart';
import 'package:mitienda_userapp/models/jsonUtils/base/json_field.dart';
import 'package:mitienda_userapp/models/productStore.dart';

class OrderProduct with JsonConvert<OrderProduct> {
  int id;

  @JSONField(name: "product_store")
  ProductStore productStore;

  int quantity;
  String state;
}