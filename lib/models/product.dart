import 'dart:convert';

// // To parse this JSON data, do
// //
// //     final product = productFromJson(jsonString);
//

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
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

  factory Product.fromJson(Map<String, dynamic> json) => Product(
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
        discountedPercentage: json["discounted_percentage"] == null
            // ? null
            ? 1
            : json["discounted_percentage"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
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
        "discounted_percentage":
            // discountedPercentage == null ? null : discountedPercentage,
            discountedPercentage == null ? 1 : discountedPercentage,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}

enum Brand { MAYBELLINE }

// final brandValues = EnumValues({"maybelline": Brand.MAYBELLINE});

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  // EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
