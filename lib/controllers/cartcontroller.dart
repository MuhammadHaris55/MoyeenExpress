import 'package:get/get.dart';
import 'package:moyeen_express/models/cart.dart';
import 'package:moyeen_express/services/remote_services.dart';

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
  var cartProductList = <CartProduct>[].obs;

  @override
  void onInit() {
    // fetchProducts();
    super.onInit();
  }

  void fetchCartProducts(product_id, attribute) async {
    try {
      isLoading(true);
      var cartProducts =
          await RemoteServices.fetchCartProducts(product_id, attribute);
      if (cartProducts != null) {
        print(cartProducts);
        cartProductList.value = cartProducts;
      }
    } finally {
      isLoading(false);
    }
  }
}
