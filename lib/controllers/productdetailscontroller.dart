import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:moyeen_express/controllers/productcontroller.dart';
import 'package:moyeen_express/models/productdetails.dart';
import 'package:moyeen_express/services/remote_services.dart';

class ProductDetailsController extends GetxController {
  var isLoading = true.obs;
  var productDetailsList = <ProductDetails>[].obs;
  var attributeList = <String>[].obs;

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
    attributeList.value = [];
    fetchProductDetails(productController.productList[index].id);
  }

  updateattributeList(var val, var index) {
    attributeList[index] = val;
  }

  void fetchProductDetails(var id) async {
    try {
      isLoading(true);
      var productDetails = await RemoteServices.fetchProductDetails(id);
      if (productDetails != null) {
        print(productDetails);
        productDetailsList.value = productDetails;

        for (var i = 0;
            i < productDetailsList[0].getAttributeValues.length;
            i++) {
          attributeList
              .add(productDetailsList[0].getAttributeValues[i].value.first);
          print(attributeList[i]);
        }
        print(productDetailsList);
        print(productDetailsList.length);
      }
    } finally {
      isLoading(false);
    }
  }
}
