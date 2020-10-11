import 'package:mitienda_userapp/models/category.dart';
import 'package:mitienda_userapp/models/product.dart';
import 'package:mitienda_userapp/models/productStore.dart';
import 'package:mitienda_userapp/models/store.dart';

productStoreFromJson(ProductStore data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['product'] != null) {
		data.product = new Product().fromJson(json['product']);
	}
	if (json['stock'] != null) {
		data.stock = json['stock']?.toInt();
	}
	if (json['price'] != null) {
		data.price = json['price']?.toDouble();
	}
	if (json['category'] != null) {
		data.category = new Category().fromJson(json['category']);
	}
	if (json['store'] != null) {
		data.store = new Store().fromJson(json['store']);
	}
	return data;
}

Map<String, dynamic> productStoreToJson(ProductStore entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	if (entity.product != null) {
		data['product'] = entity.product.toJson();
	}
	data['stock'] = entity.stock;
	data['price'] = entity.price;
	if (entity.category != null) {
		data['category'] = entity.category.toJson();
	}
	if (entity.store != null) {
		data['store'] = entity.store.toJson();
	}
	return data;
}