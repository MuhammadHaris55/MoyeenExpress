import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moyeen_express/controllers/productcontroller.dart';
import 'package:moyeen_express/styling/appColors.dart';
import 'package:moyeen_express/styling/textWidget.dart';

class Home extends StatelessWidget {
  final ProductController productController = Get.put(
    ProductController(),
  ); // TO OPEN THE DRAWER THROUGH THE ICON BUTTON ONPRESSED
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image(
          image: AssetImage(
            'images/homeLogo.png',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: textColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: textColor,
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 13.h, left: 26.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //CUSTOM FUNCTION FOR TEXT WIDGET
                      midText('Top Seller', 18),
                      SizedBox(height: 10.h),
                      Container(
                        height: 198.h,
                        color: Colors.white,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            GestureDetector(
                              onTap: () {},
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
                                    Container(
                                      width: 172.w,
                                      height: 125.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(18.r),
                                        color: itemBgColor,
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(18.r),
                                        child: Image(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            'images/Apple-iPhone-12-Pro-Max-Gold@2x.png',
                                          ),
                                          // NetworkImage(
                                          //   'https://cdn.pixabay.com/photo/2017/09/25/13/12/dog-2785074_960_720.jpg',
                                          // ),
                                        ),
                                      ),
                                    ),
                                    midText('iPhone 12 Pro Max', 14),
                                    midText('R 1,099', 18),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            GestureDetector(
                              onTap: () {},
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
                                    Container(
                                      width: 172.w,
                                      height: 125.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(18.r),
                                        color: itemBgColor,
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(18.r),
                                        child: Image(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            'images/Smartwatch-PNG-Free-Download@2x.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    midText('SmartWatch', 14),
                                    midText('R 999', 18),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            GestureDetector(
                              onTap: () {},
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
                                    Container(
                                      width: 172.w,
                                      height: 125.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(18.r),
                                        color: itemBgColor,
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(18.r),
                                        child: Image(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            'images/running_shoes_PNG5816@2x.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    midText('Nike AirMax', 14),
                                    midText('R 499', 18),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.only(left: 314.w),
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            primary: Colors.black87,
                            backgroundColor: itemBgColor,
                            minimumSize: Size(63, 23),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.r)),
                            ),
                          ),
                          child: Text(
                            'See All',
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18.h),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //CUSTOM FUNCTION FOR TEXT WIDGET
                      midText('Apparels', 18),
                      SizedBox(height: 10.h),
                      Container(
                        height: 198.h,
                        color: Colors.white,
                        child: Obx(
                          () => Container(
                            height: 198.h,
                            color: Colors.white,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: productController.productList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 10.w),
                                    child: Container(
                                      width: 172.w,
                                      height: 198.h,
                                      decoration: BoxDecoration(
                                        color: itemBgColor,
                                        borderRadius:
                                            BorderRadius.circular(18.r),
                                        boxShadow: [
                                          BoxShadow(
                                            color: shadowColor,
                                            blurRadius: 5.0,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 172.w,
                                            height: 125.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18.r),
                                              color: itemBgColor,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(18.r),
                                              child: Image(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                  'images/running_shoes_PNG5816@2x.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                          // midText('Nike AirMax', 14),
                                          midText(
                                              productController
                                                  .productList[index].name,
                                              14),
                                          midText('R 499', 18),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.only(left: 314.w),
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            primary: Colors.black87,
                            backgroundColor: itemBgColor,
                            minimumSize: Size(63, 23),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.r)),
                            ),
                          ),
                          child: Text(
                            'See All',
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 18.h),
                // Container(
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       //CUSTOM FUNCTION FOR TEXT WIDGET
                //       midText('Apparels', 18),
                //       SizedBox(height: 10.h),
                //       Container(
                //         height: 198.h,
                //         color: Colors.white,
                //         child: ListView(
                //           scrollDirection: Axis.horizontal,
                //           children: [
                //             GestureDetector(
                //               onTap: () {},
                //               child: Container(
                //                 width: 172.w,
                //                 height: 198.h,
                //                 decoration: BoxDecoration(
                //                   color: itemBgColor,
                //                   borderRadius: BorderRadius.circular(18.r),
                //                   boxShadow: [
                //                     BoxShadow(
                //                       color: shadowColor,
                //                       blurRadius: 5.0,
                //                     ),
                //                   ],
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.center,
                //                   children: [
                //                     Container(
                //                       width: 172.w,
                //                       height: 125.h,
                //                       decoration: BoxDecoration(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         color: itemBgColor,
                //                       ),
                //                       child: ClipRRect(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         child: Image(
                //                           fit: BoxFit.fill,
                //                           image: AssetImage(
                //                             'images/Shirt-PNG-Transparent@2x.png',
                //                           ),
                //                           // NetworkImage(
                //                           //   'https://cdn.pixabay.com/photo/2017/09/25/13/12/dog-2785074_960_720.jpg',
                //                           // ),
                //                         ),
                //                       ),
                //                     ),
                //                     // SizedBox(height: 10.0),
                //                     midText('Shirts For Mans', 14),
                //                     // SizedBox(height: 5.0),
                //                     midText('R 1,099', 18),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             SizedBox(width: 10.w),
                //             GestureDetector(
                //               onTap: () {},
                //               child: Container(
                //                 width: 172.w,
                //                 height: 198.h,
                //                 decoration: BoxDecoration(
                //                   color: itemBgColor,
                //                   borderRadius: BorderRadius.circular(18.r),
                //                   boxShadow: [
                //                     BoxShadow(
                //                       color: shadowColor,
                //                       blurRadius: 5.0,
                //                     ),
                //                   ],
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.center,
                //                   children: [
                //                     Container(
                //                       width: 172.w,
                //                       height: 125.h,
                //                       decoration: BoxDecoration(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         color: itemBgColor,
                //                       ),
                //                       child: ClipRRect(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         child: Image(
                //                           fit: BoxFit.fill,
                //                           image: AssetImage(
                //                             'images/unnamed@2x.png',
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                     midText('Pants For Mans', 14),
                //                     midText('R 999', 18),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             SizedBox(width: 10.w),
                //             GestureDetector(
                //               onTap: () {},
                //               child: Container(
                //                 width: 172.w,
                //                 height: 198.h,
                //                 decoration: BoxDecoration(
                //                   color: itemBgColor,
                //                   borderRadius: BorderRadius.circular(18.r),
                //                   boxShadow: [
                //                     BoxShadow(
                //                       color: shadowColor,
                //                       blurRadius: 5.0,
                //                     ),
                //                   ],
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.center,
                //                   children: [
                //                     Container(
                //                       width: 172.w,
                //                       height: 125.h,
                //                       decoration: BoxDecoration(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         color: itemBgColor,
                //                       ),
                //                       child: ClipRRect(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         child: Image(
                //                           fit: BoxFit.fill,
                //                           image: AssetImage(
                //                             'images/Belt-PNG-Photos@2x.png',
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                     midText('Belts for Mans', 14),
                //                     midText('R 499', 18),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             SizedBox(width: 10.w),
                //           ],
                //         ),
                //       ),
                //       // Obx(
                //       //     () => Container(
                //       //       height: 198.h,
                //       //       color: Colors.white,
                //       //       child: ListView.builder(
                //       //         itemCount: productController.productList.length,
                //       //         itemBuilder: (BuildContext context, int index) {
                //       //           return GestureDetector(
                //       //             onTap: () {},
                //       //             child: Container(
                //       //               width: 172.w,
                //       //               height: 198.h,
                //       //               decoration: BoxDecoration(
                //       //                 color: itemBgColor,
                //       //                 borderRadius: BorderRadius.circular(18.r),
                //       //                 boxShadow: [
                //       //                   BoxShadow(
                //       //                     color: shadowColor,
                //       //                     blurRadius: 5.0,
                //       //                   ),
                //       //                 ],
                //       //               ),
                //       //               child: Column(
                //       //                 crossAxisAlignment:
                //       //                     CrossAxisAlignment.center,
                //       //                 children: [
                //       //                   Container(
                //       //                     width: 172.w,
                //       //                     height: 125.h,
                //       //                     decoration: BoxDecoration(
                //       //                       borderRadius:
                //       //                           BorderRadius.circular(18.r),
                //       //                       color: itemBgColor,
                //       //                     ),
                //       //                     child: ClipRRect(
                //       //                       borderRadius:
                //       //                           BorderRadius.circular(18.r),
                //       //                       child: Image(
                //       //                         fit: BoxFit.fill,
                //       //                         image: AssetImage(
                //       //                           'images/running_shoes_PNG5816@2x.png',
                //       //                         ),
                //       //                       ),
                //       //                     ),
                //       //                   ),
                //       //                   midText('Nike AirMax', 14),
                //       //                   midText('R 499', 18),
                //       //                 ],
                //       //               ),
                //       //             ),
                //       //           );
                //       //         },
                //       //       ),
                //       //       // ListView(
                //       //       //   scrollDirection: Axis.horizontal,
                //       //       //   children: [
                //       //       //     GestureDetector(
                //       //       //       onTap: () {},
                //       //       //       child: Container(
                //       //       //         width: 172.w,
                //       //       //         height: 198.h,
                //       //       //         decoration: BoxDecoration(
                //       //       //           color: itemBgColor,
                //       //       //           borderRadius: BorderRadius.circular(18.r),
                //       //       //           boxShadow: [
                //       //       //             BoxShadow(
                //       //       //               color: shadowColor,
                //       //       //               blurRadius: 5.0,
                //       //       //             ),
                //       //       //           ],
                //       //       //         ),
                //       //       //         child: Column(
                //       //       //           crossAxisAlignment: CrossAxisAlignment.center,
                //       //       //           children: [
                //       //       //             Container(
                //       //       //               width: 172.w,
                //       //       //               height: 125.h,
                //       //       //               decoration: BoxDecoration(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 color: itemBgColor,
                //       //       //               ),
                //       //       //               child: ClipRRect(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 child: Image(
                //       //       //                   fit: BoxFit.fill,
                //       //       //                   image: AssetImage(
                //       //       //                     'images/Apple-iPhone-12-Pro-Max-Gold@2x.png',
                //       //       //                   ),
                //       //       //                   // NetworkImage(
                //       //       //                   //   'https://cdn.pixabay.com/photo/2017/09/25/13/12/dog-2785074_960_720.jpg',
                //       //       //                   // ),
                //       //       //                 ),
                //       //       //               ),
                //       //       //             ),
                //       //       //             // SizedBox(height: 10.0),
                //       //       //             midText('iPhone 12 Pro Max', 14),
                //       //       //             // SizedBox(height: 5.0),
                //       //       //             midText('R 1,099', 18),
                //       //       //           ],
                //       //       //         ),
                //       //       //       ),
                //       //       //     ),
                //       //       //     SizedBox(width: 10.w),
                //       //       //     GestureDetector(
                //       //       //       onTap: () {},
                //       //       //       child: Container(
                //       //       //         width: 172.w,
                //       //       //         height: 198.h,
                //       //       //         decoration: BoxDecoration(
                //       //       //           color: itemBgColor,
                //       //       //           borderRadius: BorderRadius.circular(18.r),
                //       //       //           boxShadow: [
                //       //       //             BoxShadow(
                //       //       //               color: shadowColor,
                //       //       //               blurRadius: 5.0,
                //       //       //             ),
                //       //       //           ],
                //       //       //         ),
                //       //       //         child: Column(
                //       //       //           crossAxisAlignment: CrossAxisAlignment.center,
                //       //       //           children: [
                //       //       //             Container(
                //       //       //               width: 172.w,
                //       //       //               height: 125.h,
                //       //       //               decoration: BoxDecoration(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 color: itemBgColor,
                //       //       //               ),
                //       //       //               child: ClipRRect(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 child: Image(
                //       //       //                   fit: BoxFit.fill,
                //       //       //                   image: AssetImage(
                //       //       //                     'images/Smartwatch-PNG-Free-Download@2x.png',
                //       //       //                   ),
                //       //       //                 ),
                //       //       //               ),
                //       //       //             ),
                //       //       //             midText('SmartWatch', 14),
                //       //       //             midText('R 999', 18),
                //       //       //           ],
                //       //       //         ),
                //       //       //       ),
                //       //       //     ),
                //       //       //     SizedBox(width: 10.w),
                //       //       //     GestureDetector(
                //       //       //       onTap: () {},
                //       //       //       child: Container(
                //       //       //         width: 172.w,
                //       //       //         height: 198.h,
                //       //       //         decoration: BoxDecoration(
                //       //       //           color: itemBgColor,
                //       //       //           borderRadius: BorderRadius.circular(18.r),
                //       //       //           boxShadow: [
                //       //       //             BoxShadow(
                //       //       //               color: shadowColor,
                //       //       //               blurRadius: 5.0,
                //       //       //             ),
                //       //       //           ],
                //       //       //         ),
                //       //       //         child: Column(
                //       //       //           crossAxisAlignment: CrossAxisAlignment.center,
                //       //       //           children: [
                //       //       //             Container(
                //       //       //               width: 172.w,
                //       //       //               height: 125.h,
                //       //       //               decoration: BoxDecoration(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 color: itemBgColor,
                //       //       //               ),
                //       //       //               child: ClipRRect(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 child: Image(
                //       //       //                   fit: BoxFit.fill,
                //       //       //                   image: AssetImage(
                //       //       //                     'images/running_shoes_PNG5816@2x.png',
                //       //       //                   ),
                //       //       //                 ),
                //       //       //               ),
                //       //       //             ),
                //       //       //             midText('Nike AirMax', 14),
                //       //       //             midText('R 499', 18),
                //       //       //           ],
                //       //       //         ),
                //       //       //       ),
                //       //       //     ),
                //       //       //     SizedBox(width: 10.w),
                //       //       //   ],
                //       //       // ),
                //       //     ),
                //       //   ),
                //       Padding(
                //         padding: EdgeInsets.only(left: 314.w),
                //         child: OutlinedButton(
                //           onPressed: () {},
                //           style: OutlinedButton.styleFrom(
                //             primary: Colors.black87,
                //             backgroundColor: itemBgColor,
                //             minimumSize: Size(63, 23),
                //             padding: EdgeInsets.symmetric(horizontal: 16),
                //             shape: RoundedRectangleBorder(
                //               borderRadius:
                //                   BorderRadius.all(Radius.circular(12.r)),
                //             ),
                //           ),
                //           child: Text(
                //             'See All',
                //             style: GoogleFonts.poppins(
                //               color: Colors.red,
                //               fontSize: 11.sp,
                //               fontWeight: FontWeight.w500,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(height: 18.h),
                // Container(
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       //CUSTOM FUNCTION FOR TEXT WIDGET
                //       midText('Accessories', 18),
                //       SizedBox(height: 10.h),
                //       Container(
                //         height: 198.h,
                //         color: Colors.white,
                //         child: ListView(
                //           scrollDirection: Axis.horizontal,
                //           children: [
                //             GestureDetector(
                //               onTap: () {},
                //               child: Container(
                //                 width: 172.w,
                //                 height: 198.h,
                //                 decoration: BoxDecoration(
                //                   color: itemBgColor,
                //                   borderRadius: BorderRadius.circular(18.r),
                //                   boxShadow: [
                //                     BoxShadow(
                //                       color: shadowColor,
                //                       blurRadius: 5.0,
                //                     ),
                //                   ],
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.center,
                //                   children: [
                //                     Container(
                //                       width: 172.w,
                //                       height: 125.h,
                //                       decoration: BoxDecoration(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         color: itemBgColor,
                //                       ),
                //                       child: ClipRRect(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         child: Image(
                //                           fit: BoxFit.fill,
                //                           image: AssetImage(
                //                             'images/PngItem_995533@2x.png',
                //                           ),
                //                           // NetworkImage(
                //                           //   'https://cdn.pixabay.com/photo/2017/09/25/13/12/dog-2785074_960_720.jpg',
                //                           // ),
                //                         ),
                //                       ),
                //                     ),
                //                     // SizedBox(height: 10.0),
                //                     midText('HeadPhones', 14),
                //                     // SizedBox(height: 5.0),
                //                     midText('R 599', 18),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             SizedBox(width: 10.w),
                //             GestureDetector(
                //               onTap: () {},
                //               child: Container(
                //                 width: 172.w,
                //                 height: 198.h,
                //                 decoration: BoxDecoration(
                //                   color: itemBgColor,
                //                   borderRadius: BorderRadius.circular(18.r),
                //                   boxShadow: [
                //                     BoxShadow(
                //                       color: shadowColor,
                //                       blurRadius: 5.0,
                //                     ),
                //                   ],
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.center,
                //                   children: [
                //                     Container(
                //                       width: 172.w,
                //                       height: 125.h,
                //                       decoration: BoxDecoration(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         color: itemBgColor,
                //                       ),
                //                       child: ClipRRect(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         child: Image(
                //                           fit: BoxFit.fill,
                //                           image: AssetImage(
                //                             'images/Smartwatch-PNG-Free-Download@2x.png',
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                     midText('SmartWatch', 14),
                //                     midText('R 999', 18),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             SizedBox(width: 10.w),
                //             GestureDetector(
                //               onTap: () {},
                //               child: Container(
                //                 width: 172.w,
                //                 height: 198.h,
                //                 decoration: BoxDecoration(
                //                   color: itemBgColor,
                //                   borderRadius: BorderRadius.circular(18.r),
                //                   boxShadow: [
                //                     BoxShadow(
                //                       color: shadowColor,
                //                       blurRadius: 5.0,
                //                     ),
                //                   ],
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.center,
                //                   children: [
                //                     Container(
                //                       width: 172.w,
                //                       height: 125.h,
                //                       decoration: BoxDecoration(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         color: itemBgColor,
                //                       ),
                //                       child: ClipRRect(
                //                         borderRadius:
                //                             BorderRadius.circular(18.r),
                //                         child: Image(
                //                           fit: BoxFit.fill,
                //                           image: AssetImage(
                //                             'images/running_shoes_PNG5816@2x.png',
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                     midText('Nike AirMax', 14),
                //                     midText('R 499', 18),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             SizedBox(width: 10.w),
                //           ],
                //         ),
                //       ),
                //       // Obx(
                //       //     () => Container(
                //       //       height: 198.h,
                //       //       color: Colors.white,
                //       //       child: ListView.builder(
                //       //         itemCount: productController.productList.length,
                //       //         itemBuilder: (BuildContext context, int index) {
                //       //           return GestureDetector(
                //       //             onTap: () {},
                //       //             child: Container(
                //       //               width: 172.w,
                //       //               height: 198.h,
                //       //               decoration: BoxDecoration(
                //       //                 color: itemBgColor,
                //       //                 borderRadius: BorderRadius.circular(18.r),
                //       //                 boxShadow: [
                //       //                   BoxShadow(
                //       //                     color: shadowColor,
                //       //                     blurRadius: 5.0,
                //       //                   ),
                //       //                 ],
                //       //               ),
                //       //               child: Column(
                //       //                 crossAxisAlignment:
                //       //                     CrossAxisAlignment.center,
                //       //                 children: [
                //       //                   Container(
                //       //                     width: 172.w,
                //       //                     height: 125.h,
                //       //                     decoration: BoxDecoration(
                //       //                       borderRadius:
                //       //                           BorderRadius.circular(18.r),
                //       //                       color: itemBgColor,
                //       //                     ),
                //       //                     child: ClipRRect(
                //       //                       borderRadius:
                //       //                           BorderRadius.circular(18.r),
                //       //                       child: Image(
                //       //                         fit: BoxFit.fill,
                //       //                         image: AssetImage(
                //       //                           'images/running_shoes_PNG5816@2x.png',
                //       //                         ),
                //       //                       ),
                //       //                     ),
                //       //                   ),
                //       //                   midText('Nike AirMax', 14),
                //       //                   midText('R 499', 18),
                //       //                 ],
                //       //               ),
                //       //             ),
                //       //           );
                //       //         },
                //       //       ),
                //       //       // ListView(
                //       //       //   scrollDirection: Axis.horizontal,
                //       //       //   children: [
                //       //       //     GestureDetector(
                //       //       //       onTap: () {},
                //       //       //       child: Container(
                //       //       //         width: 172.w,
                //       //       //         height: 198.h,
                //       //       //         decoration: BoxDecoration(
                //       //       //           color: itemBgColor,
                //       //       //           borderRadius: BorderRadius.circular(18.r),
                //       //       //           boxShadow: [
                //       //       //             BoxShadow(
                //       //       //               color: shadowColor,
                //       //       //               blurRadius: 5.0,
                //       //       //             ),
                //       //       //           ],
                //       //       //         ),
                //       //       //         child: Column(
                //       //       //           crossAxisAlignment: CrossAxisAlignment.center,
                //       //       //           children: [
                //       //       //             Container(
                //       //       //               width: 172.w,
                //       //       //               height: 125.h,
                //       //       //               decoration: BoxDecoration(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 color: itemBgColor,
                //       //       //               ),
                //       //       //               child: ClipRRect(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 child: Image(
                //       //       //                   fit: BoxFit.fill,
                //       //       //                   image: AssetImage(
                //       //       //                     'images/Apple-iPhone-12-Pro-Max-Gold@2x.png',
                //       //       //                   ),
                //       //       //                   // NetworkImage(
                //       //       //                   //   'https://cdn.pixabay.com/photo/2017/09/25/13/12/dog-2785074_960_720.jpg',
                //       //       //                   // ),
                //       //       //                 ),
                //       //       //               ),
                //       //       //             ),
                //       //       //             // SizedBox(height: 10.0),
                //       //       //             midText('iPhone 12 Pro Max', 14),
                //       //       //             // SizedBox(height: 5.0),
                //       //       //             midText('R 1,099', 18),
                //       //       //           ],
                //       //       //         ),
                //       //       //       ),
                //       //       //     ),
                //       //       //     SizedBox(width: 10.w),
                //       //       //     GestureDetector(
                //       //       //       onTap: () {},
                //       //       //       child: Container(
                //       //       //         width: 172.w,
                //       //       //         height: 198.h,
                //       //       //         decoration: BoxDecoration(
                //       //       //           color: itemBgColor,
                //       //       //           borderRadius: BorderRadius.circular(18.r),
                //       //       //           boxShadow: [
                //       //       //             BoxShadow(
                //       //       //               color: shadowColor,
                //       //       //               blurRadius: 5.0,
                //       //       //             ),
                //       //       //           ],
                //       //       //         ),
                //       //       //         child: Column(
                //       //       //           crossAxisAlignment: CrossAxisAlignment.center,
                //       //       //           children: [
                //       //       //             Container(
                //       //       //               width: 172.w,
                //       //       //               height: 125.h,
                //       //       //               decoration: BoxDecoration(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 color: itemBgColor,
                //       //       //               ),
                //       //       //               child: ClipRRect(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 child: Image(
                //       //       //                   fit: BoxFit.fill,
                //       //       //                   image: AssetImage(
                //       //       //                     'images/Smartwatch-PNG-Free-Download@2x.png',
                //       //       //                   ),
                //       //       //                 ),
                //       //       //               ),
                //       //       //             ),
                //       //       //             midText('SmartWatch', 14),
                //       //       //             midText('R 999', 18),
                //       //       //           ],
                //       //       //         ),
                //       //       //       ),
                //       //       //     ),
                //       //       //     SizedBox(width: 10.w),
                //       //       //     GestureDetector(
                //       //       //       onTap: () {},
                //       //       //       child: Container(
                //       //       //         width: 172.w,
                //       //       //         height: 198.h,
                //       //       //         decoration: BoxDecoration(
                //       //       //           color: itemBgColor,
                //       //       //           borderRadius: BorderRadius.circular(18.r),
                //       //       //           boxShadow: [
                //       //       //             BoxShadow(
                //       //       //               color: shadowColor,
                //       //       //               blurRadius: 5.0,
                //       //       //             ),
                //       //       //           ],
                //       //       //         ),
                //       //       //         child: Column(
                //       //       //           crossAxisAlignment: CrossAxisAlignment.center,
                //       //       //           children: [
                //       //       //             Container(
                //       //       //               width: 172.w,
                //       //       //               height: 125.h,
                //       //       //               decoration: BoxDecoration(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 color: itemBgColor,
                //       //       //               ),
                //       //       //               child: ClipRRect(
                //       //       //                 borderRadius:
                //       //       //                     BorderRadius.circular(18.r),
                //       //       //                 child: Image(
                //       //       //                   fit: BoxFit.fill,
                //       //       //                   image: AssetImage(
                //       //       //                     'images/running_shoes_PNG5816@2x.png',
                //       //       //                   ),
                //       //       //                 ),
                //       //       //               ),
                //       //       //             ),
                //       //       //             midText('Nike AirMax', 14),
                //       //       //             midText('R 499', 18),
                //       //       //           ],
                //       //       //         ),
                //       //       //       ),
                //       //       //     ),
                //       //       //     SizedBox(width: 10.w),
                //       //       //   ],
                //       //       // ),
                //       //     ),
                //       //   ),
                //       Padding(
                //         padding: EdgeInsets.only(left: 314.w),
                //         child: OutlinedButton(
                //           onPressed: () {},
                //           style: OutlinedButton.styleFrom(
                //             primary: Colors.black87,
                //             backgroundColor: itemBgColor,
                //             minimumSize: Size(63, 23),
                //             padding: EdgeInsets.symmetric(horizontal: 16),
                //             shape: RoundedRectangleBorder(
                //               borderRadius:
                //                   BorderRadius.all(Radius.circular(12.r)),
                //             ),
                //           ),
                //           child: Text(
                //             'See All',
                //             style: GoogleFonts.poppins(
                //               color: Colors.red,
                //               fontSize: 11.sp,
                //               fontWeight: FontWeight.w500,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(height: 18.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
