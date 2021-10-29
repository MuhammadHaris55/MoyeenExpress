import 'package:get/state_manager.dart';
import 'package:moyeen_express/models/product.dart';
import 'package:moyeen_express/services/remote_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;
  var attributeList = <String>[].obs;
  var addToCartResponseList = <String>[].obs;
  var message = 'Something went wrong'.obs;
  var userId;

  @override
  void onInit() async {
    fetchProducts();
    SharedPreferences pref =
        await SharedPreferences.getInstance();
    userId = await pref.getInt('userId');
    print('cartController ${userId}');
    super.onInit();
  }

  // ==================================== FUNCTION TO INITIALIZE ATTRIBUTES LIST (product detail page dropdowns) ===============================
  attributelistinitiate(var index) {
    attributeList.value = [];
    for(var i = 0; i < productList[index].getAttributeValues.length; i++){
      print(productList[index].getAttributeValues[i].value.first);
      // attributeList[i] = productList[index].getAttributeValues[i].value.first;
      attributeList.add(productList[index].getAttributeValues[i].value.first);
    }
  }
  // ==================================== FUNCTION TO UPDATE ATTRIBUTES LIST (product detail page dropdowns) ===============================
  updateattributeList(var val, var index) {
    attributeList[index] = val;
    print(attributeList);
  }

  // ========================================================= GET ALL PRODUCTS (for home page) ===================================
  void fetchProducts() async {
  // Future? fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        print(products);
        productList.value = products;
        print(productList.value);
      }
    } finally {
      isLoading(false);
    }
  }

// ========================================================== ADD PRODUCT TO CART ========================================
  Future<String> addToCart(product_id, user_id, attribute) async {
    try {
      isLoading(true);
      var data = await RemoteServices.AddToCart(product_id, user_id, attribute);
      if(data != null) {
        print('in if productController${data[0].message}');
        // addToCartResponseList.value = message;
        message(data[0].message);
        return data[0].message;
      }
    } finally {
      isLoading(false);
      return 'Something went wrong';
    }
  }
}
