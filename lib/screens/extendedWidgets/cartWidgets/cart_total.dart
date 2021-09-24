// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:moyeen_express/controllers/cartcontroller.dart';
//
// class CartTotal extends StatelessWidget {
//   final CartController controller = Get.find();
//   CartTotal({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => Container(
//         // color: Colors.red,
//
//         padding: const EdgeInsets.symmetric(horizontal: 75),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Center(
//                 child: Text(
//               'Total',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             )),
//             // print('${controller.total}'),
//             Center(
//                 child: Text(
//               '${controller.total}',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }
