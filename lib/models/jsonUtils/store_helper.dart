import 'package:mitienda_userapp/models/store.dart';

storeFromJson(Store data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['owner'] != null) {
		data.owner = json['owner']?.toString();
	}
	if (json['address'] != null) {
		data.address = json['address']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['delivery'] != null) {
		data.delivery = json['delivery'];
	}
	if (json['phone'] != null) {
		data.phone = json['phone']?.toString();
	}
	if (json['email'] != null) {
		data.email = json['email']?.toString();
	}
	if (json['password'] != null) {
		data.password = json['password']?.toString();
	}
	if (json['open'] != null) {
		data.open = json['open'];
	}
	return data;
}

Map<String, dynamic> storeToJson(Store entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['owner'] = entity.owner;
	data['address'] = entity.address;
	data['image'] = entity.image;
	data['delivery'] = entity.delivery;
	data['phone'] = entity.phone;
	data['email'] = entity.email;
	data['password'] = entity.password;
	data['open'] = entity.open;
	return data;
}