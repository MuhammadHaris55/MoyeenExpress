import 'package:get/state_manager.dart';
import 'package:moyeen_express/models/product.dart';
import 'package:moyeen_express/services/remote_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        print(products);
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
