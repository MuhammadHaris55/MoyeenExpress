// To parse this JSON data, do
//
//     final productDetails = productDetailsFromJson(jsonString);

import 'dart:convert';

List<ProductDetails> productDetailsFromJson(String str) =>
    List<ProductDetails>.from(
        json.decode(str).map((x) => ProductDetails.fromJson(x)));

String productDetailsToJson(List<ProductDetails> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductDetails {
  ProductDetails({
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
    required this.getchildcategory,
    required this.getAttributeValues,
    required this.getShop,
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
  Getchildcategory getchildcategory;
  List<GetAttributeValue> getAttributeValues;
  GetShop getShop;

  factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
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
        discountedPercentage:
            json["discounted_percentage"] ?? json["discounted_percentage"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        getchildcategory: Getchildcategory.fromJson(json["getchildcategory"]),
        getAttributeValues: List<GetAttributeValue>.from(
            json["get_attribute_values"]
                .map((x) => GetAttributeValue.fromJson(x))),
        getShop: GetShop.fromJson(json["get_shop"]),
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
        "getchildcategory": getchildcategory.toJson(),
        "get_attribute_values":
            List<dynamic>.from(getAttributeValues.map((x) => x.toJson())),
        "get_shop": getShop.toJson(),
      };
}

class GetAttributeValue {
  GetAttributeValue({
    required this.id,
    required this.attributeId,
    required this.createdAt,
    required this.updatedAt,
    required this.productId,
    required this.value,
    required this.attribute,
  });

  int id;
  int attributeId;
  DateTime createdAt;
  DateTime updatedAt;
  int productId;
  List<String> value;
  Attribute attribute;

  factory GetAttributeValue.fromJson(Map<String, dynamic> json) =>
      GetAttributeValue(
        id: json["id"],
        attributeId: json["attribute_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        productId: json["product_id"],
        value: List<String>.from(
            json["value"] == null ? null : json["value"].map((x) => x)),
        attribute: Attribute.fromJson(json["attribute"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attribute_id": attributeId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "product_id": productId,
        "value": List<dynamic>.from(value.map((x) => x)),
        "attribute": attribute.toJson(),
      };
}

class Attribute {
  Attribute({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;
  int status;

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        id: json["id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        status: json["status"] == null ? 0 : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "status": status == null ? null : status,
      };
}

class GetShop {
  GetShop({
    required this.id,
    required this.vendorId,
    required this.name,
    required this.description,
    required this.image,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.getVendor,
  });

  int id;
  int vendorId;
  String name;
  String description;
  String image;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  GetVendor getVendor;

  factory GetShop.fromJson(Map<String, dynamic> json) => GetShop(
        id: json["id"],
        vendorId: json["vendor_id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        getVendor: GetVendor.fromJson(json["get_vendor"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vendor_id": vendorId,
        "name": name,
        "description": description,
        "image": image,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "get_vendor": getVendor.toJson(),
      };
}

class GetVendor {
  GetVendor({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.image,
    required this.userRole,
    required this.addressOne,
    required this.addressTwo,
    required this.zipcode,
    required this.city,
    required this.country,
    required this.phoneNumber,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String username;
  String email;
  String password;
  String image;
  int userRole;
  String addressOne;
  String addressTwo;
  int zipcode;
  String city;
  String country;
  String phoneNumber;
  int status;
  DateTime createdAt;
  DateTime updatedAt;

  factory GetVendor.fromJson(Map<String, dynamic> json) => GetVendor(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        image: json["image"],
        userRole: json["user_role"],
        addressOne: json["address_one"],
        addressTwo: json["address_two"],
        zipcode: json["zipcode"],
        city: json["city"],
        country: json["country"],
        phoneNumber: json["phone_number"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "password": password,
        "image": image,
        "user_role": userRole,
        "address_one": addressOne,
        "address_two": addressTwo,
        "zipcode": zipcode,
        "city": city,
        "country": country,
        "phone_number": phoneNumber,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Getchildcategory {
  Getchildcategory({
    required this.id,
    required this.name,
    required this.subCategoryId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.subCategory,
  });

  int id;
  String name;
  int subCategoryId;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  SubCategory subCategory;

  factory Getchildcategory.fromJson(Map<String, dynamic> json) =>
      Getchildcategory(
        id: json["id"],
        name: json["name"],
        subCategoryId: json["sub_category_id"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        subCategory: SubCategory.fromJson(json["sub_category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "sub_category_id": subCategoryId,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "sub_category": subCategory.toJson(),
      };
}

class SubCategory {
  SubCategory({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
  });

  int id;
  String name;
  int categoryId;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  Attribute category;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        name: json["name"],
        categoryId: json["category_id"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        category: Attribute.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category_id": categoryId,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "category": category.toJson(),
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
