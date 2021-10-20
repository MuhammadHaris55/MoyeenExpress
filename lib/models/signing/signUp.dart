// // To parse this JSON data, do
// //
// //     final signUp = signUpFromJson(jsonString);
//
// import 'dart:convert';
//
// List<SignUp> signUpFromJson(String str) => List<SignUp>.from(json.decode(str).map((x) => SignUp.fromJson(x)));
//
// String signUpToJson(List<SignUp> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class SignUp {
//   SignUp({
//     this.message,
//     this.status,
//     this.user,
//   });
//
//   String message;
//   int status;
//   User user;
//
//   factory SignUp.fromJson(Map<String, dynamic> json) => SignUp(
//     message: json["message"],
//     status: json["status"],
//     user: User.fromJson(json["user"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "message": message,
//     "status": status,
//     "user": user.toJson(),
//   };
// }
//
// class User {
//   User({
//     this.username,
//     this.email,
//     this.password,
//     this.phoneNumber,
//     this.updatedAt,
//     this.createdAt,
//     this.id,
//   });
//
//   String username;
//   String email;
//   String password;
//   String phoneNumber;
//   DateTime updatedAt;
//   DateTime createdAt;
//   int id;
//
//   factory User.fromJson(Map<String, dynamic> json) => User(
//     username: json["username"],
//     email: json["email"],
//     password: json["password"],
//     phoneNumber: json["phone_number"],
//     updatedAt: DateTime.parse(json["updated_at"]),
//     createdAt: DateTime.parse(json["created_at"]),
//     id: json["id"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "username": username,
//     "email": email,
//     "password": password,
//     "phone_number": phoneNumber,
//     "updated_at": updatedAt.toIso8601String(),
//     "created_at": createdAt.toIso8601String(),
//     "id": id,
//   };
// }
