// To parse this JSON data, do
//
//     final signing = signingFromJson(jsonString);

import 'dart:convert';

List<Signing> signingFromJson(String str) => List<Signing>.from(json.decode(str).map((x) => Signing.fromJson(x)));

String signingToJson(List<Signing> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Signing {
  Signing({
    required this.message,
    required this.status,
    this.userType,
    required this.user,
  });

  String message;
  int status;
  dynamic userType;
  User user;

  factory Signing.fromJson(Map<String, dynamic> json) => Signing(
    message: json["message"],
    status: json["status"],
    userType: json["user-type"],
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "status": status,
    "user-type": userType,
    "user": user.toJson(),
  };
}

class User {
  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    this.image,
    required this.userRole,
    this.addressOne,
    this.addressTwo,
    this.zipcode,
    this.city,
    this.country,
    required this.phoneNumber,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String username;
  String email;
  String password;
  dynamic image;
  int userRole;
  dynamic addressOne;
  dynamic addressTwo;
  dynamic zipcode;
  dynamic city;
  dynamic country;
  String phoneNumber;
  int status;
  DateTime createdAt;
  DateTime updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
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
