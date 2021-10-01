import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moyeen_express/controllers/cartcontroller.dart';
import 'package:moyeen_express/styling/appColors.dart';
import 'package:moyeen_express/styling/textWidget.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  final CartController cartController = Get.put(
    CartController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: textColor,
          ),
        ),
        backgroundColor: themeColor,
        title: midText('Cart', 18),
        centerTitle: true,
      ),
      body: cartController.cartProductList.isEmpty
          ? Center(
              child: Text('your cart is empty'),
            )
          : Obx(
              () => Container(
                color: Colors.white,
                // height: 198.h,

                child: cartController.isLoading == true
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount:
                            cartController.cartProductList[0].cart.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: Container(
                              width: 172.w,
                              height: 198.h,
                              decoration: BoxDecoration(
                                color: itemBgColor,
                                borderRadius: BorderRadius.circular(18.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: shadowColor,
                                    blurRadius: 5.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      child: Image(
                                        image: NetworkImage(
                                          'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${cartController.cartProductList[0].cart[index].getProducts.imagesTake1.name}',
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                      cartController.cartProductList[0]
                                          .cart[index].getProducts.name,
                                    ),
                                  ),
                                  // Container(
                                  //   width: 172.w,
                                  //   height: 125.h,
                                  //   decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(18.r),
                                  //     color: itemBgColor,
                                  //   ),
                                  //   child: ClipRRect(
                                  //     borderRadius: BorderRadius.circular(18.r),
                                  //     child: Image(
                                  //       fit: BoxFit.fill,
                                  //       image: NetworkImage(
                                  //         'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${productController.productList[index].images[0].name}',
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ),
      // Column(
      //   children: [
      //     // CartProducts(),
      //     // CartTotal(),
      //   ],
      // ),
    );
  }
}
