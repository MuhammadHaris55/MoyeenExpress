import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moyeen_express/controllers/cartcontroller.dart';
import 'package:moyeen_express/controllers/productcontroller.dart';
import 'package:moyeen_express/screens/cart.dart';
import 'package:moyeen_express/styling/appColors.dart';
import 'package:moyeen_express/styling/buttonElevated.dart';
import 'package:moyeen_express/styling/textWidget.dart';

class ProductDetail extends StatelessWidget {
  final int prod_index;
  final ProductController productController;
  final cartController = Get.put(CartController());

  // const ProductDetail(this.index);

  ProductDetail(
      {Key? key,
      required this.productController,
      // this.product,
      // this.quantity,
      required this.prod_index})
      : super(key: key);

  // final ProductController productController = Get.put(
  //   ProductController(),
  // ); // TO OPEN THE DRAWER THROUGH THE ICON BUTTON ONPRESSED
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: textColor,
          ),
        ),
        backgroundColor: themeColor,
        title: midText('Details', 18),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(Cart());
            },
            icon: Icon(
              Icons.shopping_cart,
              color: textColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20.h, left: 37.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 400.w,
              height: 241.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // itemCount: productController.productList.length,
                itemCount:
                    productController.productList[prod_index].images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 25.w),
                    width: 354.w,
                    height: 241.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18.r),
                      boxShadow: [
                        BoxShadow(
                          color: shadowColor,
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.r),
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${productController.productList[prod_index].images[index].name}',
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30.h),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 16.h),
                width: 354.w,
                // height: 133.h,
                decoration: BoxDecoration(
                  color: itemBgColor,
                  borderRadius: BorderRadius.circular(18.r),
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor,
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    midText(productController.productList[prod_index].name, 14),
                    Row(
                      children: [
                        regText('Category : ', 14),
                        SizedBox(width: 5.w),
                        productController.productList[prod_index]
                                    .getchildcategory.id ==
                                productController
                                    .productList[prod_index].childCategoryId
                            ? midText(
                                productController.productList[prod_index]
                                    .getchildcategory.name,
                                14)
                            : Container(),
                      ],
                    ),
                    midText(
                        '${productController.productList[prod_index].price}',
                        14),
                    Wrap(
                      children: [
                        midText('Description : ', 14),
                        SizedBox(width: 5.w),
                        regText(
                            productController
                                .productList[prod_index].description,
                            14),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            ElevatedButton(
                style: buttonDesign,
                child: button_design(353, "Add to Cart"),
                onPressed: () {
                  // cartController
                  //     .addProduct(productController.productList[prod_index]);
                  cartController.fetchCartProducts(
                      productController.productList[prod_index].id,
                      // productController.productList[0].getAttributeValues
                      ["Red", "Large"]);
                }),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
