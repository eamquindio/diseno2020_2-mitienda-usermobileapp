import 'package:mitienda_userapp/models/jsonUtils/base/json_convert_content.dart';
import 'package:mitienda_userapp/models/jsonUtils/base/json_field.dart';
import 'package:mitienda_userapp/models/shoppingCartProduct.dart';
import 'package:mitienda_userapp/models/store.dart';
import 'package:mitienda_userapp/models/user.dart';

class ShoppingCartEntity with JsonConvert<ShoppingCartEntity> {
	int id;

	Store store;

	List<ShoppingCartProduct> products;

	User user;

	@JSONField(name: "total_value")
	double totalValue;
}





