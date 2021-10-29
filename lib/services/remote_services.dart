import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:moyeen_express/models/cart.dart';
import 'package:moyeen_express/models/cart.dart';
import 'package:moyeen_express/models/cart.dart';
import 'package:moyeen_express/models/product.dart';
import 'package:moyeen_express/models/productdetails.dart';
import 'package:moyeen_express/models/signing.dart';
import 'package:moyeen_express/models/signing/signUp.dart';

class RemoteServices {
  static var client = http.Client();

  static String _url = 'https://test-urls.com/elitedesignhub/moyen-express/public/api/';
  static String imageUrl = 'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/';

  static String signIn = 'login-api';
  static String signUp = 'sing-up-api';
  // static String allProducts = 'shop_api';
  static String allProducts = 'get-product';
  static String addToCart = 'cart-data-api';
  static String getCart = 'get-cart-api-test';
  static String deleteCartProduct = 'cart-delete';

  //======================================================= GET API --------- DELETE CART PRODUCT ============================
  static Future<List<Cart>?> deleteCartProd(var cartid) async {
    String cartId = cartid.toString();
    var response = await client.get(Uri.parse(
      '${_url}${deleteCartProduct}/${cartId}',
    ));
    print(response.body);
    print('remote service ${cartid}  ${response.statusCode}');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print('remoteservice');
      print(jsonString);
      return cartFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  //======================================================= GET API --------- GET USER CART ============================
  static Future<List<Cart>?> fetchCart(var userid) async {
    var response = await client.get(Uri.parse(
      '${_url}${getCart}/${userid}',
    ));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      print('remoteservice');
      print(jsonString);
      return cartFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  //======================================================= POST API --------- ADD PRODUCTS TO CART ============================
  static Future<List<AddCart>?> AddToCart(
      var product_id, var user_id, var attribute) async {
    var url = _url + addToCart;

    Map data = {
      'product_id': product_id,
      'user_id': user_id,
      'attribute': attribute,
    };
    //encode Map to JSON
    var body = json.encode(data);

    var response = await client.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print('remoteservice');
      print(jsonString);
      return addCartFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }


  //======================================================= POST API --------- SignUp ============================
  // static Future<List<Signing>?> signUpUser(
  static Future<List<SignUp>?> signUpUser(
      var username, var email, var password, var phone_number) async {
    var url =
        _url + signUp;

    Map data = {
      'username': username,
      'email': email,
      'password': password,
      'phone_number': phone_number,
    };
    //encode Map to JSON
    var body = json.encode(data);

    var response = await client.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"}, body: body);
    print("after post request");
    print(response.statusCode);
    print(url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      // var str = signingFromJson(jsonString);
      var str = signUpFromJson(jsonString);
      print(str[0]);
      // return str;
      print("Success in remotes service method");
      // return signingFromJson(jsonString);
      return signUpFromJson(jsonString);
    } else {
      //show error message
      print("Error in remotes service method");
      return jsonDecode(response.body);
    }

    // if (response.statusCode == 200) {
    // print("after checking response from post request");
    //   var jsonString = response.body;
    //   // var str = signingFromJson(jsonString);
    //   // print(str);
    //   // return str;
    // print(jsonString);
    //
    // print("success out");
    //   return signingFromJson(jsonString);
    // } else {
    // print("Failure out");
    //   //show error message
    //   return jsonDecode(response.body);
    // }
  }

  //======================================================= POST API --------- SignIn ============================
  static Future<List<Signing>?> signInUser(
      var email, var password) async {
    var url =
        _url + signIn;

    Map data = {
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



  // ==========#############################************************* BELOW API's ARE OLD **************************#####################====



//======================================================= POST API --------- GET PRODUCTS API FUNCTION ============================
   static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(Uri.parse(
      // 'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline',
      // 'https://test-urls.com/elitedesignhub/moyen-express/public/api/shop_api',
      _url + allProducts
    ));
    print('url executed');
    if (response.statusCode == 200) {
      print('if response');
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      print('else error');
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
//
// //POST API FUNCTION
//   static Future<List<CartProduct>?> fetchCartProducts(
//       var product_id, var attribute) async {
//     var url =
//         'https://test-urls.com/elitedesignhub/moyen-express/public/api/cart-data-api';
//
//     Map data = {
//       // 'apikey': '12345678901234567890',
//       'product_id': product_id,
//       'attribute': attribute,
//     };
//     //encode Map to JSON
//     var body = json.encode(data);
//
//     var response = await client.post(Uri.parse(url),
//         headers: {"Content-Type": "application/json"}, body: body);
//     if (response.statusCode == 200) {
//       var jsonString = response.body;
//       var str = cartProductFromJson(jsonString);
//       print(str);
//       // return str;
//       return cartProductFromJson(jsonString);
//     } else {
//       //show error message
//       return jsonDecode(response.body);
//     }
//   }
//
//   //GET CARTPRODUCT after delete a product API FUNCTION
//   static Future<List<CartProduct>?> fetchCartDeleteProduct(var id) async {
//     var response = await client.get(Uri.parse(
//       'https://test-urls.com/elitedesignhub/moyen-express/public/api/cart-delete/${id}',
//     ));
//     if (response.statusCode == 200) {
//       var jsonString = response.body;
//       print('remoteservice');
//       print(jsonString);
//       return cartProductFromJson(jsonString);
//     } else {
//       //show error message
//       return null;
//     }
//   }
}
