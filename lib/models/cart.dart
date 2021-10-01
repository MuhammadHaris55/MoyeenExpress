// List<CartProduct> cartProductFromJson(String str) => List<CartProduct>.from(
//     json.decode(str).map((x) => CartProduct.fromJson(x)));
//
// String cartProductToJson(List<CartProduct> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class CartProduct {
//   CartProduct({
//     required this.message,
//     required this.status,
//     required this.cart,
//   });
//
//   String message;
//   int status;
//   List<Cart> cart;
//
//   factory CartProduct.fromJson(Map<String, dynamic> json) => CartProduct(
//         message: json["message"],
//         status: json["status"],
//         cart: List<Cart>.from(json["cart"].map((x) => Cart.fromJson(x))),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "message": message,
//         "status": status,
//         "cart": List<dynamic>.from(cart.map((x) => x.toJson())),
//       };
// }
//
// class Cart {
//   Cart({
//     required this.id,
//     required this.userId,
//     required this.productId,
//     required this.attributes,
//     required this.quantity,
//     this.userIp,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.getProducts,
//   });
//
//   int id;
//   int userId;
//   int productId;
//   String attributes;
//   int quantity;
//   dynamic userIp;
//   DateTime createdAt;
//   DateTime updatedAt;
//   GetProducts getProducts;
//
//   factory Cart.fromJson(Map<String, dynamic> json) => Cart(
//         id: json["id"],
//         userId: json["user_id"],
//         productId: json["product_id"],
//         attributes: json["attributes"],
//         quantity: json["quantity"],
//         userIp: json["user_ip"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         getProducts: GetProducts.fromJson(json["get_products"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "user_id": userId,
//         "product_id": productId,
//         "attributes": attributes,
//         "quantity": quantity,
//         "user_ip": userIp,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "get_products": getProducts.toJson(),
//       };
// }
//
// class GetProducts {
//   GetProducts({
//     required this.id,
//     required this.childCategoryId,
//     required this.shopId,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.stock,
//     required this.sku,
//     required this.slug,
//     required this.featured,
//     required this.isDiscounted,
//     required this.hasVariations,
//     required this.discountedPrice,
//     required this.discountedPercentage,
//     required this.status,
//     required this.createdAt,
//     required this.updatedAt,
//     this.deletedAt,
//     required this.imagesTake1,
//   });
//
//   int id;
//   int childCategoryId;
//   int shopId;
//   String name;
//   String description;
//   int price;
//   int stock;
//   String sku;
//   String slug;
//   int featured;
//   int isDiscounted;
//   int hasVariations;
//   int discountedPrice;
//   int discountedPercentage;
//   int status;
//   DateTime createdAt;
//   DateTime updatedAt;
//   dynamic deletedAt;
//   ImagesTake1 imagesTake1;
//
//   factory GetProducts.fromJson(Map<String, dynamic> json) => GetProducts(
//         id: json["id"],
//         childCategoryId: json["child_category_id"],
//         shopId: json["shop_id"],
//         name: json["name"],
//         description: json["description"],
//         price: json["price"],
//         stock: json["stock"],
//         sku: json["sku"],
//         slug: json["slug"],
//         featured: json["featured"],
//         isDiscounted: json["is_discounted"],
//         hasVariations: json["has_variations"],
//         discountedPrice: json["discounted_price"],
//         discountedPercentage: json["discounted_percentage"],
//         status: json["status"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         deletedAt: json["deleted_at"],
//         imagesTake1: ImagesTake1.fromJson(json["images_take1"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "child_category_id": childCategoryId,
//         "shop_id": shopId,
//         "name": name,
//         "description": description,
//         "price": price,
//         "stock": stock,
//         "sku": sku,
//         "slug": slug,
//         "featured": featured,
//         "is_discounted": isDiscounted,
//         "has_variations": hasVariations,
//         "discounted_price": discountedPrice,
//         "discounted_percentage": discountedPercentage,
//         "status": status,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "deleted_at": deletedAt,
//         "images_take1": imagesTake1.toJson(),
//       };
// }
//
// class ImagesTake1 {
//   ImagesTake1({
//     required this.id,
//     required this.productId,
//     required this.name,
//     required this.createdAt,
//     required this.updatedAt,
//     this.deletedAt,
//   });
//
//   int id;
//   int productId;
//   String name;
//   DateTime createdAt;
//   DateTime updatedAt;
//   dynamic deletedAt;
//
//   factory ImagesTake1.fromJson(Map<String, dynamic> json) => ImagesTake1(
//         id: json["id"],
//         productId: json["product_id"],
//         name: json["name"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         deletedAt: json["deleted_at"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "product_id": productId,
//         "name": name,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "deleted_at": deletedAt,
//       };
// }

// To parse this JSON data, do
//
//     final cartProduct = cartProductFromJson(jsonString);

import 'dart:convert';

List<CartProduct> cartProductFromJson(String str) => List<CartProduct>.from(
    json.decode(str).map((x) => CartProduct.fromJson(x)));

String cartProductToJson(List<CartProduct> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartProduct {
  CartProduct({
    required this.message,
    required this.status,
    required this.cart,
  });

  String message;
  int status;
  List<Cart> cart;

  factory CartProduct.fromJson(Map<String, dynamic> json) => CartProduct(
        message: json["message"],
        status: json["status"],
        cart: List<Cart>.from(json["cart"].map((x) => Cart.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
        "cart": List<dynamic>.from(cart.map((x) => x.toJson())),
      };
}

class Cart {
  Cart({
    required this.id,
    required this.userId,
    required this.productId,
    required this.attributes,
    required this.quantity,
    this.userIp,
    required this.createdAt,
    required this.updatedAt,
    required this.getProducts,
  });

  int id;
  int userId;
  int productId;
  String attributes;
  int quantity;
  dynamic userIp;
  DateTime createdAt;
  DateTime updatedAt;
  GetProducts getProducts;

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        id: json["id"],
        userId: json["user_id"],
        productId: json["product_id"],
        attributes: json["attributes"],
        quantity: json["quantity"],
        userIp: json["user_ip"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        getProducts: GetProducts.fromJson(json["get_products"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "product_id": productId,
        "attributes": attributes,
        "quantity": quantity,
        "user_ip": userIp,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "get_products": getProducts.toJson(),
      };
}

class GetProducts {
  GetProducts({
    required this.id,
    required this.childCategoryId,
    required this.shopId,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.sku,
    required this.slug,
    required this.featured,
    required this.isDiscounted,
    required this.hasVariations,
    required this.discountedPrice,
    required this.discountedPercentage,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.imagesTake1,
  });

  int id;
  int childCategoryId;
  int shopId;
  String name;
  String description;
  int price;
  int stock;
  String sku;
  String slug;
  int featured;
  int isDiscounted;
  int hasVariations;
  int discountedPrice;
  int discountedPercentage;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  ImagesTake1 imagesTake1;

  factory GetProducts.fromJson(Map<String, dynamic> json) => GetProducts(
        id: json["id"],
        childCategoryId: json["child_category_id"],
        shopId: json["shop_id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        sku: json["sku"],
        slug: json["slug"],
        featured: json["featured"],
        isDiscounted: json["is_discounted"],
        hasVariations: json["has_variations"],
        discountedPrice: json["discounted_price"],
        discountedPercentage: json["discounted_percentage"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        imagesTake1: ImagesTake1.fromJson(json["images_take1"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "child_category_id": childCategoryId,
        "shop_id": shopId,
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "sku": sku,
        "slug": slug,
        "featured": featured,
        "is_discounted": isDiscounted,
        "has_variations": hasVariations,
        "discounted_price": discountedPrice,
        "discounted_percentage": discountedPercentage,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "images_take1": imagesTake1.toJson(),
      };
}

class ImagesTake1 {
  ImagesTake1({
    required this.id,
    required this.productId,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  int id;
  int productId;
  String name;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory ImagesTake1.fromJson(Map<String, dynamic> json) => ImagesTake1(
        id: json["id"],
        productId: json["product_id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
