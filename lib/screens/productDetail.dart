import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:moyeen_express/controllers/cartcontroller.dart';
import 'package:moyeen_express/controllers/productdetailscontroller.dart';
import 'package:moyeen_express/screens/cart.dart';
import 'package:moyeen_express/styling/appColors.dart';
import 'package:moyeen_express/styling/buttonElevated.dart';
import 'package:moyeen_express/styling/textWidget.dart';

class ProductDetail extends StatelessWidget {
  // final int prod_index;
  // final ProductController productController;
  final cartController = Get.put(CartController());
  final ProductDetailsController productDetailsController =
      Get.put(ProductDetailsController());

  // ProductDetail(
  //     {Key? key,
  //     required this.productController,
  //     // this.product,
  //     // this.quantity,
  //     required this.prod_index})
  //     : super(key: key);

  //FOR DROPDOWN
  String dogBreed = 'Labrador Retriever';
  List breedlist = [
    'Labrador Retriever',
    'French Bulldog.',
    'Doberman Pinschers',
    ' German Shepherd',
    'Golden Retriever.',
    'Siberian Huskies',
    ' Poodle',
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List a = [];
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
        child: Obx(
          () => productDetailsController.isLoading == true
              ? Center(child: CircularProgressIndicator())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 400.w,
                      height: 241.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productDetailsController
                            .productDetailsList[0].images.length,
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
                                  // 'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${productController.productList[prod_index].images[index].name}',
                                  'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${productDetailsController.productDetailsList[0].images[index].name}',
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.w, vertical: 16.h),
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
                              midText(
                                  '${productDetailsController.productDetailsList[0].name}',
                                  14),
                              Row(
                                children: [
                                  regText('Category : ', 14),
                                  SizedBox(width: 5.w),
                                  midText(
                                      productDetailsController
                                          .productDetailsList[0]
                                          .getchildcategory
                                          .name,
                                      14),
                                ],
                              ),
                              midText(
                                  '${productDetailsController.productDetailsList[0].price}',
                                  14),
                              midText(
                                  '${productDetailsController.productDetailsList[0].id}',
                                  14),
                              Wrap(
                                children: [
                                  midText('Description : ', 14),
                                  SizedBox(width: 5.w),
                                  regText(
                                      productDetailsController
                                          .productDetailsList[0].description,
                                      14),
                                ],
                              ),
                              // productDetailsController.productDetailsList[0]
                              //             .getAttributeValues[0].value !=
                              //         null
                              //     ? DropdownButton<dynamic>(
                              //         isExpanded: true,
                              //         hint: Text(
                              //           'Select your dog\'s breed',
                              //           textAlign: TextAlign.center,
                              //         ),
                              //         // value: dogBreed,
                              //         value: productDetailsController
                              //             .productDetailsList[0]
                              //             .getAttributeValues[0]
                              //             .value
                              //             .first,
                              //         onChanged: (value) {
                              //           // setState(() {
                              //           //   dogBreed = value;
                              //           // });
                              //         },
                              //         // items: a.map(buildMenuItem).toList(),
                              //         items: productDetailsController
                              //             .productDetailsList[0]
                              //             .getAttributeValues[0]
                              //             .value
                              //             .map(buildMenuItem)
                              //             .toList(),
                              //         // items: breedlist.map((value) {
                              //         //   return DropdownMenuItem(
                              //         //     value: value,
                              //         //     child: Text(
                              //         //       value,
                              //         //     ),
                              //         //   );
                              //         // }).toList(),
                              //       )
                              //     : Container(),
                              // attrDropdown(dogBreed, breedlist),

                              Text(
                                '${productDetailsController.productDetailsList[0].getAttributeValues[0].value}',
                              ),

                              // attrDropdown(dogBreed, breedlist),
                              Container(
                                height: 60.0.h *
                                    productDetailsController
                                        .productDetailsList[0]
                                        .getAttributeValues
                                        .length,
                                child: productDetailsController
                                            .productDetailsList[0]
                                            .getAttributeValues[0]
                                            .value !=
                                        null
                                    ? ListView.builder(
                                        // scrollDirection: Axis.vertical,
                                        itemCount: productDetailsController
                                            .productDetailsList[0]
                                            .getAttributeValues
                                            .length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Obx(
                                            () => DropdownButton<dynamic>(
                                              isExpanded: true,
                                              hint: Text(
                                                'Select your dog\'s breed',
                                                textAlign: TextAlign.center,
                                              ),
                                              // value: dogBreed,
                                              value: productDetailsController
                                                  .attributeList[index],
                                              // productDetailsController
                                              //     .productDetailsList[0]
                                              //     .getAttributeValues[index]
                                              //     .value
                                              //     .first,
                                              onChanged: (value) {
                                                // productDetailsController
                                                //           .attributeList[index] =
                                                //       value,
                                                productDetailsController
                                                    .updateattributeList(
                                                        value, index);
                                                // setState(() {
                                                //   dogBreed = value;
                                                // });
                                              },
                                              // items: a.map(buildMenuItem).toList(),
                                              items: productDetailsController
                                                  .productDetailsList[0]
                                                  .getAttributeValues[index]
                                                  .value
                                                  .map(buildMenuItem)
                                                  .toList(),
                                              // items: breedlist.map((value) {
                                              //   return DropdownMenuItem(
                                              //     value: value,
                                              //     child: Text(
                                              //       value,
                                              //     ),
                                              //   );
                                              // }).toList(),
                                            ),
                                          );
                                        },
                                      )
                                    : Container(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    ElevatedButton(
                      style: buttonDesign,
                      child: button_design(353, "Add to Cart"),
                      onPressed: () {
                        cartController.fetchCartProducts(
                          productDetailsController.productDetailsList[0].id,
                          productDetailsController.attributeList,
                          // ['attribute']
                        );
                      },
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
        ),
      ),
    );
  }

  DropdownMenuItem<dynamic> buildMenuItem(dynamic item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
