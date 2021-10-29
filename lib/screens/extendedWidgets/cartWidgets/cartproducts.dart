// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:moyeen_express/controllers/cartcontroller.dart';
// import 'package:moyeen_express/models/product(old).dart';
//
// class CartProducts extends StatelessWidget {
//   final CartController controller = Get.find();
//   CartProducts({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => SizedBox(
//         height: 575,
//         child: ListView.builder(
//             itemCount: controller.product.length,
//             itemBuilder: (BuildContext context, int index) {
//               return CartProductsCard(
//                 controller: controller,
//                 product: controller.product.keys.toList()[index],
//                 quantity: controller.product.values.toList()[index],
//                 index: index,
//               );
//             }),
//       ),
//     );
//   }
// }
//
// class CartProductsCard extends StatelessWidget {
//   final CartController controller;
//   final Product product;
//   final int quantity;
//   final int index;
//
//   CartProductsCard(
//       {Key? key,
//       required this.controller,
//       required this.product,
//       required this.quantity,
//       required this.index})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 20.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           CircleAvatar(
//             radius: 40,
//             backgroundImage: NetworkImage(
//               'https://test-urls.com/elitedesignhub/moyen-express/public/storage/public/products/${product.images[0].name}',
//             ),
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           Expanded(child: Text('${product.name}')),
//           IconButton(
//               onPressed: () {
//                 controller.removeProduct(product);
//               },
//               icon: Icon(Icons.remove_circle)),
//           Text('${quantity}'),
//           IconButton(
//               onPressed: () {
//                 controller.addProduct(product);
//               },
//               icon: Icon(Icons.add_circle)),
//         ],
//       ),
//     );
//   }
// }
