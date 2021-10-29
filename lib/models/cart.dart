// To parse this JSON data, do
//
//     final cart = cartFromJson(jsonString);

import 'dart:convert';


// ========================================== ADD PRODUCTS TO CART ============================================
List<AddCart> addCartFromJson(String str) => List<AddCart>.from(json.decode(str).map((x) => AddCart.fromJson(x)));

String addCartToJson(List<AddCart> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AddCart {
  AddCart({
    required this.message,
  });

  String message;

  factory AddCart.fromJson(Map<String, dynamic> json) => AddCart(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}

// ========================================== CART PRODUCTS ============================================
List<Cart> cartFromJson(String str) => List<Cart>.from(json.decode(str).map((x) => Cart.fromJson(x)));

String cartToJson(List<Cart> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cart {
  Cart({
    required this.id,
    required this.userId,
    required this.productId,
    this.attributes,
    required this.quantity,
    required this.userIp,
    required this.createdAt,
    required this.updatedAt,
    required this.getProducts,
  });

  int id;
  int userId;
  int productId;
  dynamic attributes;
  int quantity;
  String? userIp;
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
    "user_ip": userIp == null ? null : userIp,
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
    required this.images,
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
  int? discountedPercentage;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  List<Image> images;

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
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
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
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
  };
}

class Image {
  Image({
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

  factory Image.fromJson(Map<String, dynamic> json) => Image(
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
