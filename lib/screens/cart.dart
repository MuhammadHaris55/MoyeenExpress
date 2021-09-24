import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moyeen_express/styling/appColors.dart';
import 'package:moyeen_express/styling/textWidget.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          // CartProducts(),
          // CartTotal(),
        ],
      ),
    );
  }
}
