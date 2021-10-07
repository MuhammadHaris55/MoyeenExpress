import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:moyeen_express/models/cart.dart';
import 'package:moyeen_express/models/product.dart';
import 'package:moyeen_express/models/productdetails.dart';

class RemoteServices {
  static var client = http.Client();

//GET PRODUCTS API FUNCTION
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

  //GET PRODUCTDETAILS API FUNCTION
  static Future<List<ProductDetails>?> fetchProductDetails(var id) async {
    var response = await client.get(Uri.parse(
      'https://test-urls.com/elitedesignhub/moyen-express/public/api/get-product-by-id/${id}',
    ));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print('remoteservice');
      print(jsonString);
      return productDetailsFromJson(jsonString);
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
      var str = cartProductFromJson(jsonString);
      print(str);
      // return str;
      return cartProductFromJson(jsonString);
    } else {
      //show error message
      return jsonDecode(response.body);
    }
  }

  //GET CARTPRODUCT after delete a product API FUNCTION
  static Future<List<CartProduct>?> fetchCartDeleteProduct(var id) async {
    var response = await client.get(Uri.parse(
      'https://test-urls.com/elitedesignhub/moyen-express/public/api/cart-delete/${id}',
    ));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print('remoteservice');
      print(jsonString);
      return cartProductFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
