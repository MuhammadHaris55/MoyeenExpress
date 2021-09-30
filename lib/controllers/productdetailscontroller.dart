import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:moyeen_express/controllers/productcontroller.dart';
import 'package:moyeen_express/models/productdetails.dart';
import 'package:moyeen_express/services/remote_services.dart';

class ProductDetailsController extends GetxController {
  var isLoading = true.obs;
  var productDetailsList = <ProductDetails>[].obs;

  final ProductController productController = Get.put(
    ProductController(),
  );

  @override
  void onInit() {
    // fetchProductDetails();
    super.onInit();
  }

  updateID(var index) {
    productDetailsList.value = [];
    fetchProductDetails(productController.productList[index].id);
  }

  void fetchProductDetails(var id) async {
    try {
      isLoading(true);
      var productDetails = await RemoteServices.fetchProductDetails(id);
      if (productDetails != null) {
        print(productDetails);
        productDetailsList.value = productDetails;
        print(productDetailsList);
        print(productDetailsList.first);
        print(productDetailsList.length);
        print(productDetailsList.value);
      }
    } finally {
      isLoading(false);
    }
  }
}
