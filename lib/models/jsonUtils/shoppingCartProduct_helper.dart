import 'package:mitienda_userapp/models/productStore.dart';
import 'package:mitienda_userapp/models/shoppingCartProduct.dart';

shoppingCartProductFromJson(ShoppingCartProduct data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['product'] != null) {
		data.product = new ProductStore().fromJson(json['product']);
	}
	if (json['quantity'] != null) {
		data.quantity = json['quantity']?.toInt();
	}
	return data;
}

Map<String, dynamic> shoppingCartProductToJson(ShoppingCartProduct entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	if (entity.product != null) {
		data['product'] = entity.product.toJson();
	}
	data['quantity'] = entity.quantity;
	return data;
}