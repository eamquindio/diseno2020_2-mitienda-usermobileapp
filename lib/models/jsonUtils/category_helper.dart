import 'package:mitienda_userapp/models/category.dart';

categoryFromJson(Category data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	return data;
}

Map<String, dynamic> categoryToJson(Category entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	return data;
}