import 'package:mitienda_userapp/models/product.dart';

productFromJson(Product data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	return data;
}

Map<String, dynamic> productToJson(Product entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['image'] = entity.image;
	data['name'] = entity.name;
	return data;
}