// class SignIn {
//   SignIn({
//     required this.message,
//     required this.status,
//     required this.user-type,
//     required this.user,
//   });
//   late final String message;
//   late final int status;
//   late final String user-type;
//   late final User user;
//
//   SignIn.fromJson(Map<String, dynamic> json){
//     message = json['message'];
//     status = json['status'];
//     user-type = json['user-type'];
//     user = User.fromJson(json['user']);
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['message'] = message;
//     _data['status'] = status;
//     _data['user-type'] = user-type;
//     _data['user'] = user.toJson();
//     return _data;
//   }
// }
//
// class User {
//   User({
//     required this.id,
//     required this.username,
//     required this.email,
//     required this.password,
//     this.image,
//     required this.userRole,
//     this.addressOne,
//     this.addressTwo,
//     this.zipcode,
//     this.city,
//     this.country,
//     required this.phoneNumber,
//     required this.status,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//   late final int id;
//   late final String username;
//   late final String email;
//   late final String password;
//   late final Null image;
//   late final int userRole;
//   late final Null addressOne;
//   late final Null addressTwo;
//   late final Null zipcode;
//   late final Null city;
//   late final Null country;
//   late final String phoneNumber;
//   late final int status;
//   late final String createdAt;
//   late final String updatedAt;
//
//   User.fromJson(Map<String, dynamic> json){
//     id = json['id'];
//     username = json['username'];
//     email = json['email'];
//     password = json['password'];
//     image = null;
//     userRole = json['user_role'];
//     addressOne = null;
//     addressTwo = null;
//     zipcode = null;
//     city = null;
//     country = null;
//     phoneNumber = json['phone_number'];
//     status = json['status'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['id'] = id;
//     _data['username'] = username;
//     _data['email'] = email;
//     _data['password'] = password;
//     _data['image'] = image;
//     _data['user_role'] = userRole;
//     _data['address_one'] = addressOne;
//     _data['address_two'] = addressTwo;
//     _data['zipcode'] = zipcode;
//     _data['city'] = city;
//     _data['country'] = country;
//     _data['phone_number'] = phoneNumber;
//     _data['status'] = status;
//     _data['created_at'] = createdAt;
//     _data['updated_at'] = updatedAt;
//     return _data;
//   }
// }