import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:moyeen_express/models/cart.dart';
import 'package:moyeen_express/models/product.dart';

class RemoteServices {
  static var client = http.Client();

//GET API FUNCTION
  static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(Uri.parse(
      // 'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline',
      'https://test-urls.com/elitedesignhub/moyen-express/public/api/shop_api',
    ));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

//POST API FUNCTION
  static Future<List<CartProduct>?> fetchCartProducts(
      var product_id, var attribute) async {
    var url =
        'https://test-urls.com/elitedesignhub/moyen-express/public/api/cart-data-api';

    Map data = {
      // 'apikey': '12345678901234567890',
      'product_id': product_id,
      'attribute': attribute,
    };
    //encode Map to JSON
    var body = json.encode(data);

    var response = await client.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var npm = json.decode(jsonString);
      print("${npm['cart'][0]}");
      print("Body start ------------");
      // print("${response.body}");
      print("${jsonString.length}");
      print("Body end ------------");
      var dec = json.encode(npm['cart'][0]);
      // return cartProductFromJson(jsonString);
      // return cartProductFromJson(dec);
    } else {
      //show error message
      return null;
    }
  }
}
