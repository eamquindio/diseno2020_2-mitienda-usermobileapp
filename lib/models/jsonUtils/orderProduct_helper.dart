import 'package:mitienda_userapp/models/orderProduct.dart';
import 'package:mitienda_userapp/models/productStore.dart';

orderProductFromJson(OrderProduct data, Map<String, dynamic> json) {
  if (json['id'] != null) {
    data.id = json['id']?.toInt();
  }
  if (json['product_store'] != null) {
    data.productStore = new ProductStore().fromJson(json['product_store']);
  }
  if (json['quantity'] != null) {
    data.quantity = json['quantity']?.toInt();
  }
  if (json['state'] != null) {
    data.state = json['state']?.toString();
  }
  return data;
}

Map<String, dynamic> orderProductToJson(OrderProduct entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  if (entity.productStore != null) {
    data['product_store'] = entity.productStore.toJson();
  }
  data['quantity'] = entity.quantity;
  data['state'] = entity.state;
  return data;
}