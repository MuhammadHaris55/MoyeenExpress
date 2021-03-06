// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
  List<ImageElement> images;
  Getchildcategory getchildcategory;
  List<GetAttributeValue> getAttributeValues;
  GetShop getShop;

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
    discountedPercentage: json["discounted_percentage"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    images: List<ImageElement>.from(json["images"].map((x) => ImageElement.fromJson(x))),
    getchildcategory: Getchildcategory.fromJson(json["getchildcategory"]),
    getAttributeValues: List<GetAttributeValue>.from(json["get_attribute_values"].map((x) => GetAttributeValue.fromJson(x))),
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
    "discounted_percentage": discountedPercentage == null ? null : discountedPercentage,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "getchildcategory": getchildcategory.toJson(),
    "get_attribute_values": List<dynamic>.from(getAttributeValues.map((x) => x.toJson())),
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

  factory GetAttributeValue.fromJson(Map<String, dynamic> json) => GetAttributeValue(
    id: json["id"],
    attributeId: json["attribute_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    productId: json["product_id"],
    value: List<String>.from(json["value"].map((x) => x)),
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
  // AttributeName name;
  String name;
  DateTime createdAt;
  DateTime updatedAt;
  int? status;

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
    id: json["id"],
    // name: attributeNameValues.map[json["name"]],
    name: json["name"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    status: json["status"] == null ? null : json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": attributeNameValues.reverse[name],
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "status": status == null ? null : status,
  };
}

enum AttributeName { COLORS, SIZE, FURNITURE, FASHION, ELECTRONICS, HOME_GARDEN }

final attributeNameValues = EnumValues({
  "Colors": AttributeName.COLORS,
  "Electronics": AttributeName.ELECTRONICS,
  "Fashion": AttributeName.FASHION,
  "Furniture": AttributeName.FURNITURE,
  "Home & Garden": AttributeName.HOME_GARDEN,
  "Size": AttributeName.SIZE
}, {});

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
    this.deletedAt,
    required this.getVendor,
  });

  int id;
  int vendorId;
  // GetShopName name;
  String name;
  // Description description;
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
    // name: getShopNameValues.map[json["name"]],
    // description: descriptionValues.map[json["description"]],
    description: json["description"],
    // image: getShopImageValues.map[json["image"]],
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
    "name": getShopNameValues.reverse[name],
    "description": descriptionValues.reverse[description],
    "image": getShopImageValues.reverse[image],
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
    "get_vendor": getVendor.toJson(),
  };
}

enum Description { TEST, EARUM_TEMPORA_SIT_E, CUPIDATAT_SAPIENTE_Q }

final descriptionValues = EnumValues({
  "Cupidatat sapiente q": Description.CUPIDATAT_SAPIENTE_Q,
  "Earum tempora sit e": Description.EARUM_TEMPORA_SIT_E,
  "test": Description.TEST
}, {});

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
    // username: usernameValues.map[json["username"]],
    // email: emailValues.map[json["email"]],
    email: json["email"],
    password: json["password"],
    // password: passwordValues.map[json["password"]],
    // image: getVendorImageValues.map[json["image"]],
    image: json["image"],
    userRole: json["user_role"],
    addressOne: json["address_one"],
    // addressOne: addressOneValues.map[json["address_one"]],
    // addressTwo: addressTwoValues.map[json["address_two"]],
    addressTwo: json["address_two"],
    zipcode: json["zipcode"],
    city: json["city"],
    // city: cityValues.map[json["city"]],
    // country: countryValues.map[json["country"]],
    country: json["country"],
    phoneNumber: json["phone_number"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": usernameValues.reverse[username],
    "email": emailValues.reverse[email],
    "password": passwordValues.reverse[password],
    "image": getVendorImageValues.reverse[image],
    "user_role": userRole,
    "address_one": addressOneValues.reverse[addressOne],
    "address_two": addressTwoValues.reverse[addressTwo],
    "zipcode": zipcode,
    "city": cityValues.reverse[city],
    "country": countryValues.reverse[country],
    "phone_number": phoneNumber,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

enum AddressOne { NESCIUNT_RERUM_TEMP, IN_TEMPORE_PRAESENT, LIBERO_ITAQUE_HARUM }

final addressOneValues = EnumValues({
  "In tempore praesent": AddressOne.IN_TEMPORE_PRAESENT,
  "Libero itaque harum": AddressOne.LIBERO_ITAQUE_HARUM,
  "Nesciunt rerum temp": AddressOne.NESCIUNT_RERUM_TEMP
}, {});

enum AddressTwo { NESCIUNT_RERUM_TEMP, VOLUPTATEM_NOSTRUD, PRAESENTIUM_DOLOREM }

final addressTwoValues = EnumValues({
  "Nesciunt rerum temp": AddressTwo.NESCIUNT_RERUM_TEMP,
  "Praesentium dolorem": AddressTwo.PRAESENTIUM_DOLOREM,
  "Voluptatem nostrud": AddressTwo.VOLUPTATEM_NOSTRUD
}, {});

enum City { INCIDIDUNT_EOS_ACCUS, SINT_ITAQUE_QUIS_FUG, OFFICIA_VELIT_CONSEC }

final cityValues = EnumValues({
  "Incididunt eos accus": City.INCIDIDUNT_EOS_ACCUS,
  "Officia velit consec": City.OFFICIA_VELIT_CONSEC,
  "Sint itaque quis fug": City.SINT_ITAQUE_QUIS_FUG
}, {});

enum Country { US, IN_AUTE_TEMPORIBUS_R, MOLESTIAS_AMET_UT_C }

final countryValues = EnumValues({
  "In aute temporibus r": Country.IN_AUTE_TEMPORIBUS_R,
  "Molestias amet ut c": Country.MOLESTIAS_AMET_UT_C,
  "US": Country.US
}, {});

enum Email { TESTVENDOR_GMAIL_COM, WUGYQICO_MAILINATOR_COM, TYQI_MAILINATOR_COM }

final emailValues = EnumValues({
  "testvendor@gmail.com": Email.TESTVENDOR_GMAIL_COM,
  "tyqi@mailinator.com": Email.TYQI_MAILINATOR_COM,
  "wugyqico@mailinator.com": Email.WUGYQICO_MAILINATOR_COM
}, {});

enum GetVendorImage { THE_1629326342254890_JFIF, THE_162975941193169_JPG, THE_1629759320613407_JPG }

final getVendorImageValues = EnumValues({
  "1629326342-254890.jfif": GetVendorImage.THE_1629326342254890_JFIF,
  "1629759320-613407.jpg": GetVendorImage.THE_1629759320613407_JPG,
  "1629759411-93169.jpg": GetVendorImage.THE_162975941193169_JPG
}, {});

enum Password { THE_2_Y_10_FI_GOD_S6_VN_YIK_SS_LDG_OUSH_4_WG_AIXX51_BY_Y6_U6_YGK_A2_J81_JHT_W_GX_U2, THE_2_Y_10_J3_AG_LN_Y_GJ_QP_AIGS_DI_AM_QUQKC_FV_X_VV_FZ_YN_OHKE1_OMU_A_LW_O_QL_D1_W, THE_2_Y_10_T_IJ7_O_IH3_LV_YB_HY519_KD_P_XE_Q_WXY_QD_6_H_CT6_N_MT_WW_ER_TMH_P_FUW_NV_AU }

final passwordValues = EnumValues({
  "\u00242y\u002410\u0024fiGodS6VNYikSsLDGOush.4wgAixx51byY6u6ygkA2J81JhtWGxU2": Password.THE_2_Y_10_FI_GOD_S6_VN_YIK_SS_LDG_OUSH_4_WG_AIXX51_BY_Y6_U6_YGK_A2_J81_JHT_W_GX_U2,
  "\u00242y\u002410\u0024J3agLnYGjQpAigsDiAM.QuqkcFv/XVvFzYnOhke1OMU/aLwOQlD1W": Password.THE_2_Y_10_J3_AG_LN_Y_GJ_QP_AIGS_DI_AM_QUQKC_FV_X_VV_FZ_YN_OHKE1_OMU_A_LW_O_QL_D1_W,
  "\u00242y\u002410\u0024tIj7OIh3LvYbHy519kdPXeQWxyQd/6hCt6NMtWW/erTmhPFuwNVAu": Password.THE_2_Y_10_T_IJ7_O_IH3_LV_YB_HY519_KD_P_XE_Q_WXY_QD_6_H_CT6_N_MT_WW_ER_TMH_P_FUW_NV_AU
}, {});

enum Username { TEST_VENDOR, VUBAS, TAJEGORYK }

final usernameValues = EnumValues({
  "tajegoryk": Username.TAJEGORYK,
  "test vendor": Username.TEST_VENDOR,
  "vubas": Username.VUBAS
}, {});

enum GetShopImage { THE_162984592417_JPG, THE_1629759411511366_JPG, THE_1629759321500594_JPG }

final getShopImageValues = EnumValues({
  "1629759321-500594.jpg": GetShopImage.THE_1629759321500594_JPG,
  "1629759411-511366.jpg": GetShopImage.THE_1629759411511366_JPG,
  "162984592417.jpg": GetShopImage.THE_162984592417_JPG
}, {});

enum GetShopName { TEST_SHOP, PRISCILLA_KIM, ILA_MARSHALL }

final getShopNameValues = EnumValues({
  "Ila Marshall": GetShopName.ILA_MARSHALL,
  "Priscilla Kim": GetShopName.PRISCILLA_KIM,
  "TestShop": GetShopName.TEST_SHOP
}, {});

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

  factory Getchildcategory.fromJson(Map<String, dynamic> json) => Getchildcategory(
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

class ImageElement {
  ImageElement({
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

  factory ImageElement.fromJson(Map<String, dynamic> json) => ImageElement(
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

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map, this.reverseMap);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
