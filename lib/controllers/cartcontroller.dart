import 'dart:convert';

import 'package:get/get.dart';
import 'package:moyeen_express/controllers/signingcontroller.dart';
import 'package:moyeen_express/models/cart.dart';
import 'package:moyeen_express/services/remote_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartController extends GetxController {
  // // add a dict to store the product in the cart
  // var _products = {}.obs;
  //
  // void addProduct(Product product) {
  //   if (_products.containsKey(product)) {
  //     _products[product] += 1;
  //   } else {
  //     _products[product] = 1;
  //   }
  //   Get.snackbar(
  //     'Product Added',
  //     'You have added ${product.name} to the cart',
  //     snackPosition: SnackPosition.BOTTOM,
  //     duration: Duration(seconds: 2),
  //   );
  // }
//
//   get product => _products;
//
//   void removeProduct(Product product) {
//     if (_products.containsKey(product) && _products[product] == 1) {
//       _products.removeWhere((key, value) => key == product);
//     } else {
//       _products[product] -= 1;
//     }
//   }
//
//   get productSubTotal => _products.entries
//       .map((product) => product.key.price * product.value)
//       .toList();
//   get total => _products.entries
//       .map((product) => product.key.price * product.value)
//       .toList()
//       .reduce((value, element) => value + element)
//       .toStringAsFixed(2);
//
// //   Find the ScaffoldMessenger in the widget tree
// // and use it to show a SnackBar.


  var isLoading = true.obs;
  var cartProductList = <Cart>[].obs;
  var attributeProductList = [].obs;
  var totalPrice = 0;
  int? userid;

  final SigningController signingController = Get.put(
    SigningController(),
  );


  @override
  void onInit() async {
    super.onInit();
    // SharedPreference
    SharedPreferences pref =
        await SharedPreferences.getInstance();

    userid = await pref.getInt('userid');
    print('cartController ${userid}');

    // fetchCartProduct(signingController.userList.first.user.id);
    fetchCartProduct(userid);
  }

  void cartCall() {
    fetchCartProduct(userid);
  }

  //======================================================= DELETE PRODUCT FROM CART ============================
  void deleteCartProduct(cartid) async {
    try {
      // cartProductList.value = [];
      isLoading(true);
      print('in cartController ${cartid}');
      var cartProducts = await RemoteServices.deleteCartProd(cartid);
      if (cartProducts != null) {
        print("i'm in");
        print(cartProducts);
        cartProductList.value = cartProducts;
        totalPrice = 0;
        for (var i = 0; i < cartProductList.length; i++) {
          totalPrice += (cartProductList[i].getProducts.price *
              cartProductList[i].quantity);
        }
        print(cartProductList);
      }
    } finally {
      isLoading(false);
    }
  }


  //======================================================= GET USER CART ============================
  void fetchCartProduct(userid) async {
    try {
      cartProductList.value = [];
      isLoading(true);
      print('in cartController ${userid}');
      var cartProducts = await RemoteServices.fetchCart(userid);
      if (cartProducts != null) {
        print("i'm in");
        print(cartProducts);
        cartProductList.value = cartProducts;
        totalPrice = 0;
        for (var i = 0; i < cartProductList.length; i++) {
          totalPrice += (cartProductList[i].getProducts.price *
            cartProductList[i].quantity);
        }
        print(cartProductList);
      }
    } finally {
      isLoading(false);
    }
  }


  //Fetch the cart list after adding the item
  // Future<bool> fetchCartProducts(product_id, attribute) async {
  //   try {
  //     cartProductList.value = [];
  //     isLoading(true);
  //     var cartProducts =
  //         await RemoteServices.fetchCartProducts(product_id, attribute);
  //     if (cartProducts != null) {
  //       print(cartProducts);
  //       cartProductList.value = cartProducts;
  //       totalPrice = 0;
  //       for (var i = 0; i < cartProductList[0].cart.length; i++) {
  //         totalPrice += (cartProductList[0].cart[i].getProducts.price *
  //             cartProductList[0].cart[i].quantity);
  //       }
  //       print(cartProductList);
  //       // Get.snackbar('title', cartProductList[0].message);
  //       return true;
  //     }
  //   } finally {
  //     isLoading(false);
  //   }
  //   return false;
  // }

  // //Fetch the cart list after delete the item
  // void fetchCartDeleteProduct(id) async {
  //   try {
  //     cartProductList.value = [];
  //     isLoading(true);
  //     var cartProducts = await RemoteServices.fetchCartDeleteProduct(id);
  //     if (cartProducts != null) {
  //       print(cartProducts);
  //       cartProductList.value = cartProducts;
  //       totalPrice = 0;
  //       for (var i = 0; i < cartProductList[0].cart.length; i++) {
  //         // totalPrice += cartProductList[0].cart[i].getProducts.price;
  //         totalPrice += (cartProductList[0].cart[i].getProducts.price *
  //             cartProductList[0].cart[i].quantity);
  //       }
  //       print(cartProductList);
  //       // Get.snackbar('title', cartProductList[0].message);
  //     }
  //   } finally {
  //     isLoading(false);
  //   }
  // }

  List conToList(data) {
    List list = [];
    // list = json.decode(data);
    attributeProductList = json.decode(data);
    print(list);
    return list;
  }
}
