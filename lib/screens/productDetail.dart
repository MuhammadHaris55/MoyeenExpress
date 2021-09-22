import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moyeen_express/controllers/productcontroller.dart';
import 'package:moyeen_express/styling/appColors.dart';
import 'package:moyeen_express/styling/buttonElevated.dart';
import 'package:moyeen_express/styling/textWidget.dart';

class ProductDetail extends StatelessWidget {
  // final int index;
  // const ProductDetail(this.index);

  final ProductController productController = Get.put(
    ProductController(),
  ); // TO OPEN THE DRAWER THROUGH THE ICON BUTTON ONPRESSED
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
            onPressed: () {},
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
                itemCount: productController.productList.length,
                // itemCount: productController.productList[index].images.length,
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
                          'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${productController.productList[index].images[0].name}',
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 16.h),
              width: 354.w,
              height: 133.h,
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
                  midText(productController.productList[0].name, 14),
                  Row(
                    children: [
                      regText('Category : ', 14),
                      SizedBox(width: 5.w),
                      productController.productList[0].getchildcategory.id ==
                              productController.productList[0].childCategoryId
                          ? midText(
                              productController
                                  .productList[0].getchildcategory.name,
                              14)
                          : Container(),
                    ],
                  ),
                  midText('${productController.productList[0].price}', 14),
                  Row(
                    children: [
                      midText('Description : ', 14),
                      SizedBox(width: 5.w),
                      regText(productController.productList[0].description, 14),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            ElevatedButton(
              style: buttonDesign,
              child: button_design(353, "Add to Cart"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
