import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
    // List<CartProduct> text = cartController.cartProductList;

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
      body: Obx(
            () => cartController.cartProductList.isEmpty
          ? Center(
              child: Text('your cart is empty'),
            )
          :
      // Obx(
      //         () =>
                  Container(
                color: Colors.white,
                // height: 198.h,
                child: cartController.isLoading == true
                    ? Center(child: CircularProgressIndicator())
                    :
                    // Padding(
                    //     padding: EdgeInsets.symmetric(
                    //         horizontal: 37.0.w, vertical: 20.0.h),
                    //     child: Column(
                    //       children: [
                    //         Container(
                    //           // height: 155.0.h,
                    //           height: 170.0.h,
                    //           decoration: BoxDecoration(
                    //             color: itemBgColor,
                    //             borderRadius: BorderRadius.circular(12.0.r),
                    //           ),
                    //           child: Column(
                    //             children: [
                    //               SizedBox(height: 13.0.h),
                    //               Row(
                    //                 children: [
                    //                   SizedBox(width: 11.0.w),
                    //                   ClipRRect(
                    //                     borderRadius:
                    //                         BorderRadius.circular(18.r),
                    //                     child: Image(
                    //                       width: 83.0.w,
                    //                       height: 99.0.h,
                    //                       fit: BoxFit.fill,
                    //                       image: NetworkImage(
                    //                         'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${cartController.cartProductList[0].cart[0].getProducts.imagesTake1.name}',
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   SizedBox(width: 5.0.w),
                    //                   SizedBox(
                    //                     width: 241.0.w,
                    //                     child: Column(
                    //                       crossAxisAlignment:
                    //                           CrossAxisAlignment.start,
                    //                       children: [
                    //                         Text(
                    //                           'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
                    //                           style: GoogleFonts.poppins(),
                    //                           maxLines: 2,
                    //                         ),
                    //                         midText('R 7,289', 14),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //               Divider(
                    //                 thickness: 2.0,
                    //               ),
                    //               SizedBox(
                    //                 height: 30.0.h,
                    //                 child: Row(
                    //                   children: [
                    //                     SizedBox(width: 20.0.w),
                    //                     IconButton(
                    //                       iconSize: 17.0,
                    //                       onPressed: () {},
                    //                       icon: Icon(
                    //                         Icons.favorite_border,
                    //                       ),
                    //                     ),
                    //                     VerticalDivider(
                    //                       thickness: 2.0,
                    //                     ),
                    //                     IconButton(
                    //                       iconSize: 17.0,
                    //                       onPressed: () {},
                    //                       icon: Icon(
                    //                         Icons.delete,
                    //                       ),
                    //                     ),
                    //                     Spacer(),
                    //                     IconButton(
                    //                       iconSize: 17.0,
                    //                       onPressed: () {},
                    //                       icon: Icon(
                    //                         Icons.remove_circle,
                    //                         color: Colors.orange,
                    //                       ),
                    //                     ),
                    //                     SizedBox(
                    //                         width: 34.0.w, child: TextField()),
                    //                     IconButton(
                    //                       iconSize: 17.0,
                    //                       onPressed: () {},
                    //                       icon: Icon(
                    //                         Icons.add_circle,
                    //                         color: Colors.orange,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //
                    //       ],
                    //     ),
                    //   ),
                    SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0.h, horizontal: 30.0.w),
                          child: Column(
                            children: [
                              for (var i
                                  in cartController.cartProductList[0].cart)
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(vertical: 10.0.h),
                                  child: Card(
                                    color: itemBgColor,
                                    shape: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0.r),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    elevation: 5,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 13.0.h),
                                        Row(
                                          children: [
                                            SizedBox(width: 11.0.w),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(18.r),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0.w),
                                                child: Image(
                                                  // width: 83.0.w,
                                                  // height: 99.0.h,
                                                  width: 73.0.w,
                                                  height: 89.0.h,
                                                  fit: BoxFit.fill,
                                                  image: NetworkImage(
                                                    // 'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${cartController.cartProductList[0].cart[index].getProducts.imagesTake1.name}',
                                                    'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${i.getProducts.imagesTake1.name}',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 5.0.w),
                                            SizedBox(
                                              width: 241.0.w,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
                                                    style:
                                                        GoogleFonts.poppins(),
                                                    maxLines: 2,
                                                  ),
                                                  midText(
                                                      // 'R 7,289',
                                                      //   'R ${cartController.cartProductList[0].cart[index].getProducts.price}',
                                                      'R ${i.getProducts.price}',
                                                      14),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          thickness: 2.0,
                                        ),
                                        SizedBox(
                                          height: 30.0.h,
                                          child: Row(
                                            children: [
                                              SizedBox(width: 20.0.w),
                                              IconButton(
                                                iconSize: 17.0,
                                                onPressed: () {
                                                  Get.snackbar('WARNING', "Functionality under development");
                                                },
                                                icon: Icon(
                                                  Icons.favorite_border,
                                                ),
                                              ),
                                              VerticalDivider(
                                                thickness: 2.0,
                                              ),
                                              IconButton(
                                                iconSize: 17.0,
                                                onPressed: () {
                                                  cartController
                                                      .fetchCartDeleteProduct(
                                                          i.id);
                                                },
                                                icon: Icon(
                                                  Icons.delete,
                                                ),
                                              ),
                                              Spacer(),
                                              IconButton(
                                                iconSize: 17.0,
                                                onPressed: () {
                                                  Get.snackbar('WARNING', "Functionality under development");
                                                },
                                                icon: Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.orange,
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 34.0.w,
                                                  child: TextFormField(
                                                    textAlign: TextAlign.center,
                                                    initialValue:
                                                        '${i.quantity}',
                                                    // controller: '${i.quantity}',
                                                  )),
                                              IconButton(
                                                iconSize: 17.0,
                                                onPressed: () {
                                                  Get.snackbar('WARNING', "Functionality under development");
                                                },
                                                icon: Icon(
                                                  Icons.add_circle,
                                                  color: Colors.orange,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 5.0.h),
                                      ],
                                    ),
                                  ),
                                ),
                              //   Container(
                              //   height: 190.0.h *
                              //       cartController.cartProductList[0].cart.length,
                              //   child: ListView.builder(
                              //     shrinkWrap: true,
                              //     scrollDirection: Axis.vertical,
                              //     itemCount: cartController
                              //         .cartProductList[0].cart.length,
                              //     itemBuilder: (BuildContext context, int index) {
                              //       return Padding(
                              //         padding:
                              //             EdgeInsets.symmetric(vertical: 10.0.h),
                              //         child: Card(
                              //           color: itemBgColor,
                              //           shape: OutlineInputBorder(
                              //             borderRadius:
                              //                 BorderRadius.circular(12.0.r),
                              //             borderSide:
                              //                 BorderSide(color: Colors.white),
                              //           ),
                              //           elevation: 5,
                              //           child: Column(
                              //             children: [
                              //               SizedBox(height: 13.0.h),
                              //               Row(
                              //                 children: [
                              //                   SizedBox(width: 11.0.w),
                              //                   ClipRRect(
                              //                     borderRadius:
                              //                         BorderRadius.circular(18.r),
                              //                     child: Padding(
                              //                       padding:
                              //                           EdgeInsets.all(10.0.w),
                              //                       child: Image(
                              //                         // width: 83.0.w,
                              //                         // height: 99.0.h,
                              //                         width: 73.0.w,
                              //                         height: 89.0.h,
                              //                         fit: BoxFit.fill,
                              //                         image: NetworkImage(
                              //                           'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${cartController.cartProductList[0].cart[index].getProducts.imagesTake1.name}',
                              //                         ),
                              //                       ),
                              //                     ),
                              //                   ),
                              //                   SizedBox(width: 5.0.w),
                              //                   SizedBox(
                              //                     width: 241.0.w,
                              //                     child: Column(
                              //                       crossAxisAlignment:
                              //                           CrossAxisAlignment.start,
                              //                       children: [
                              //                         Text(
                              //                           'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
                              //                           style:
                              //                               GoogleFonts.poppins(),
                              //                           maxLines: 2,
                              //                         ),
                              //                         midText(
                              //                             // 'R 7,289',
                              //                             'R ${cartController.cartProductList[0].cart[index].getProducts.price}',
                              //                             14),
                              //                       ],
                              //                     ),
                              //                   ),
                              //                 ],
                              //               ),
                              //               Divider(
                              //                 thickness: 2.0,
                              //               ),
                              //               SizedBox(
                              //                 height: 30.0.h,
                              //                 child: Row(
                              //                   children: [
                              //                     SizedBox(width: 20.0.w),
                              //                     IconButton(
                              //                       iconSize: 17.0,
                              //                       onPressed: () {},
                              //                       icon: Icon(
                              //                         Icons.favorite_border,
                              //                       ),
                              //                     ),
                              //                     VerticalDivider(
                              //                       thickness: 2.0,
                              //                     ),
                              //                     IconButton(
                              //                       iconSize: 17.0,
                              //                       onPressed: () {},
                              //                       icon: Icon(
                              //                         Icons.delete,
                              //                       ),
                              //                     ),
                              //                     Spacer(),
                              //                     IconButton(
                              //                       iconSize: 17.0,
                              //                       onPressed: () {},
                              //                       icon: Icon(
                              //                         Icons.remove_circle,
                              //                         color: Colors.orange,
                              //                       ),
                              //                     ),
                              //                     SizedBox(
                              //                         width: 34.0.w,
                              //                         child: TextField()),
                              //                     IconButton(
                              //                       iconSize: 17.0,
                              //                       onPressed: () {},
                              //                       icon: Icon(
                              //                         Icons.add_circle,
                              //                         color: Colors.orange,
                              //                       ),
                              //                     ),
                              //                   ],
                              //                 ),
                              //               ),
                              //               SizedBox(height: 5.0.h),
                              //             ],
                              //           ),
                              //         ),
                              //       );
                              //     },
                              //   ),
                              // ),
                              SizedBox(height: 10.0.h),
                              Card(
                                shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0.r),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                // height: 137.0.h,
                                // decoration: BoxDecoration(
                                color: itemBgColor,
                                //   borderRadius: BorderRadius.circular(18),
                                // ),
                                child: SizedBox(
                                  height: 155.0.h,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.w, vertical: 9.5.h),
                                        child: SizedBox(
                                          child: Row(
                                            children: [
                                              Text(
                                                'Subtotal',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Spacer(),
                                              Text(
                                                '${cartController.totalPrice}',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        thickness: 2,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.w,
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Total',
                                              style: GoogleFonts.poppins(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              '${cartController.totalPrice}',
                                              style: GoogleFonts.poppins(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 234.0.w,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Complete your Order',
                                              style: GoogleFonts.poppins()),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.orange,
                                            elevation: 7,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      12), // <-- Radius
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
//
// Padding(
// padding: EdgeInsets.symmetric(
// vertical: 10.0.h, horizontal: 30.0.w),
// child: Column(
// children: [
// Container(
// height: 190.0.h *
// cartController.cartProductList[0].cart.length,
// child: ListView.builder(
// shrinkWrap: true,
// scrollDirection: Axis.vertical,
// itemCount: cartController
//     .cartProductList[0].cart.length,
// itemBuilder: (BuildContext context, int index) {
// return Padding(
// padding:
// EdgeInsets.symmetric(vertical: 10.0.h),
// child: Card(
// color: itemBgColor,
// shape: OutlineInputBorder(
// borderRadius:
// BorderRadius.circular(12.0.r),
// borderSide:
// BorderSide(color: Colors.white),
// ),
// elevation: 5,
// child: Column(
// children: [
// SizedBox(height: 13.0.h),
// Row(
// children: [
// SizedBox(width: 11.0.w),
// ClipRRect(
// borderRadius:
// BorderRadius.circular(18.r),
// child: Padding(
// padding:
// EdgeInsets.all(10.0.w),
// child: Image(
// // width: 83.0.w,
// // height: 99.0.h,
// width: 73.0.w,
// height: 89.0.h,
// fit: BoxFit.fill,
// image: NetworkImage(
// 'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${cartController.cartProductList[0].cart[index].getProducts.imagesTake1.name}',
// ),
// ),
// ),
// ),
// SizedBox(width: 5.0.w),
// SizedBox(
// width: 241.0.w,
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Text(
// 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
// style:
// GoogleFonts.poppins(),
// maxLines: 2,
// ),
// midText(
// // 'R 7,289',
// 'R ${cartController.cartProductList[0].cart[index].getProducts.price}',
// 14),
// ],
// ),
// ),
// ],
// ),
// Divider(
// thickness: 2.0,
// ),
// SizedBox(
// height: 30.0.h,
// child: Row(
// children: [
// SizedBox(width: 20.0.w),
// IconButton(
// iconSize: 17.0,
// onPressed: () {},
// icon: Icon(
// Icons.favorite_border,
// ),
// ),
// VerticalDivider(
// thickness: 2.0,
// ),
// IconButton(
// iconSize: 17.0,
// onPressed: () {},
// icon: Icon(
// Icons.delete,
// ),
// ),
// Spacer(),
// IconButton(
// iconSize: 17.0,
// onPressed: () {},
// icon: Icon(
// Icons.remove_circle,
// color: Colors.orange,
// ),
// ),
// SizedBox(
// width: 34.0.w,
// child: TextField()),
// IconButton(
// iconSize: 17.0,
// onPressed: () {},
// icon: Icon(
// Icons.add_circle,
// color: Colors.orange,
// ),
// ),
// ],
// ),
// ),
// SizedBox(height: 5.0.h),
// ],
// ),
// ),
// );
// },
// ),
// ),
// SizedBox(height: 10.0.h),
// Card(
// shape: OutlineInputBorder(
// borderRadius: BorderRadius.circular(12.0.r),
// borderSide: BorderSide(color: Colors.white),
// ),
// // height: 137.0.h,
// // decoration: BoxDecoration(
// color: itemBgColor,
// //   borderRadius: BorderRadius.circular(18),
// // ),
// child: SizedBox(
// height: 155.0.h,
// child: Column(
// children: [
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal: 20.w, vertical: 9.5.h),
// child: SizedBox(
// child: Row(
// children: [
// Text(
// 'Subtotal',
// style: GoogleFonts.poppins(
// fontWeight: FontWeight.w400,
// ),
// ),
// Spacer(),
// Text(
// '7,289',
// style: GoogleFonts.poppins(
// fontWeight: FontWeight.w400,
// ),
// ),
// ],
// ),
// ),
// ),
// Divider(
// thickness: 2,
// ),
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal: 20.w,
// ),
// child: Row(
// children: [
// Text(
// 'Total',
// style: GoogleFonts.poppins(
// color: Colors.orange,
// fontWeight: FontWeight.w600,
// ),
// ),
// Spacer(),
// Text(
// '7,289',
// style: GoogleFonts.poppins(
// color: Colors.orange,
// fontWeight: FontWeight.w600,
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// width: 234.0.w,
// child: ElevatedButton(
// onPressed: () {},
// child: Text('Complete your Order',
// style: GoogleFonts.poppins()),
// style: ElevatedButton.styleFrom(
// primary: Colors.orange,
// elevation: 7,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(
// 12), // <-- Radius
// ),
// ),
// ),
// )
// ],
// ),
// ),
// ),
// ],
// ),
// ),
