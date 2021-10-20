import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:moyeen_express/models/cart.dart';
import 'package:moyeen_express/models/product.dart';
import 'package:moyeen_express/models/productdetails.dart';
import 'package:moyeen_express/models/signing.dart';

class RemoteServices {
  static var client = http.Client();

  static String _url = 'https://test-urls.com/elitedesignhub/moyen-express/public/api/';
  static String signIn = 'login-api';
  static String signUp = 'sing-up-api';
  static String allProducts = 'shop_api';


  //======================================================= POST API --------- SignUp ============================
  static Future<List<Signing>?> signUpUser(
      var username, var email, var password, var phone_number) async {
    var url =
        _url + signUp;

    Map data = {
      // 'apikey': '12345678901234567890',
      'username': username,
      'email': email,
      'password': password,
      'phone_number': phone_number,
    };
    //encode Map to JSON
    var body = json.encode(data);

    var response = await client.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var str = signingFromJson(jsonString);
      print(str);
      // return str;
      return signingFromJson(jsonString);
    } else {
      //show error message
      return jsonDecode(response.body);
    }
  }

  //======================================================= POST API --------- SignUp ============================
  static Future<List<Signing>?> signInUser(
      var email, var password) async {
    var url =
        _url + signIn;

    Map data = {
      // 'apikey': '12345678901234567890',
      'email': email,
      'password': password,
    };
    //encode Map to JSON
    var body = json.encode(data);

    var response = await client.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);

    print(response.statusCode);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var str = signingFromJson(jsonString);
      print(str[0]);
      // return str;
      print("Success in remotes service method");
      return signingFromJson(jsonString);
    } else {
      //show error message
      print("Error in remotes service method");
      return jsonDecode(response.body);
    }
  }




//GET PRODUCTS API FUNCTION
   static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(Uri.parse(
      // 'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline',
      // 'https://test-urls.com/elitedesignhub/moyen-express/public/api/shop_api',
      _url + allProducts
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
      '${_url}get-product-by-id/${id}',
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
