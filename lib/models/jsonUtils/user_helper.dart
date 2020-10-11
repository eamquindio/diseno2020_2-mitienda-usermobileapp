import 'package:mitienda_userapp/models/user.dart';

userFromJson(User data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['username'] != null) {
		data.username = json['username']?.toString();
	}
	if (json['phone'] != null) {
		data.phone = json['phone']?.toString();
	}
	if (json['email'] != null) {
		data.email = json['email']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	return data;
}

Map<String, dynamic> userToJson(User entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['username'] = entity.username;
	data['phone'] = entity.phone;
	data['email'] = entity.email;
	data['name'] = entity.name;
	return data;
}