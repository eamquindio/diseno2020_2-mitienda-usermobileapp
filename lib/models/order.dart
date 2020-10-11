import 'package:mitienda_userapp/models/jsonUtils/base/json_convert_content.dart';
import 'package:mitienda_userapp/models/jsonUtils/base/json_field.dart';
import 'package:mitienda_userapp/models/orderProduct.dart';
import 'package:mitienda_userapp/models/store.dart';
import 'package:mitienda_userapp/models/user.dart';

class OrderEntity with JsonConvert<OrderEntity> {
  int id;

  List<OrderProduct> products;

  Store store;

  User user;

  String state;
  String date;

  @JSONField(name: "total_value")
  double totalValue;
}
