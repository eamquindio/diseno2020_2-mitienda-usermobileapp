import 'package:mitienda_userapp/models/order.dart';
import 'package:mitienda_userapp/models/orderProduct.dart';
import 'package:mitienda_userapp/models/store.dart';
import 'package:mitienda_userapp/models/user.dart';

orderEntityFromJson(OrderEntity data, Map<String, dynamic> json) {
  if (json['id'] != null) {
    data.id = json['id']?.toInt();
  }
  if (json['product'] != null) {
    data.products = new List<OrderProduct>();
    (json['product'] as List).forEach((v) {
      data.products.add(new OrderProduct().fromJson(v));
    });
  }
  if (json['store'] != null) {
    data.store = new Store().fromJson(json['store']);
  }
  if (json['user'] != null) {
    data.user = new User().fromJson(json['user']);
  }
  if (json['state'] != null) {
    data.state = json['state']?.toString();
  }
  if (json['date'] != null) {
    data.date = json['date']?.toString();
  }
  if (json['total_value'] != null) {
    data.totalValue = json['total_value'];
  }
  return data;
}

Map<String, dynamic> orderEntityToJson(OrderEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  if (entity.products != null) {
    data['product'] = entity.products.map((v) => v.toJson()).toList();
  }
  if (entity.store != null) {
    data['store'] = entity.store.toJson();
  }
  if (entity.user != null) {
    data['user'] = entity.user.toJson();
  }
  data['state'] = entity.state;
  data['date'] = entity.date;
  data['total_value'] = entity.totalValue;
  return data;
}
