import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moyeen_express/models/product.dart';
import 'package:moyeen_express/styling/appColors.dart';
import 'package:moyeen_express/styling/textWidget.dart';

class HomeProductTile extends StatelessWidget {
  final Product product;
  const HomeProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                borderRadius: BorderRadius.circular(18.r),
                color: itemBgColor,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18.r),
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
    );
  }
}
