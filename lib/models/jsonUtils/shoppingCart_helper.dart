import 'package:mitienda_userapp/models/shoppingCart.dart';
import 'package:mitienda_userapp/models/shoppingCartProduct.dart';
import 'package:mitienda_userapp/models/store.dart';
import 'package:mitienda_userapp/models/user.dart';

shoppingCartEntityFromJson(ShoppingCartEntity data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['store'] != null) {
		data.store = new Store().fromJson(json['store']);
	}
	if (json['products'] != null) {
		data.products = new List<ShoppingCartProduct>();
		(json['products'] as List).forEach((v) {
			data.products.add(new ShoppingCartProduct().fromJson(v));
		});
	}
	if (json['user'] != null) {
		data.user = new User().fromJson(json['user']);
	}
	if (json['total_value'] != null) {
		data.totalValue = json['total_value']?.toDouble();
	}
	return data;
}

Map<String, dynamic> shoppingCartEntityToJson(ShoppingCartEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	if (entity.store != null) {
		data['store'] = entity.store.toJson();
	}
	if (entity.products != null) {
		data['products'] =  entity.products.map((v) => v.toJson()).toList();
	}
	if (entity.user != null) {
		data['user'] = entity.user.toJson();
	}
	data['total_value'] = entity.totalValue;
	return data;
}