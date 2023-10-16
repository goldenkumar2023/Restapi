// To parse this JSON data, do
//
//     final usersModels = usersModelsFromJson(jsonString);

import 'dart:convert';

UsersModels usersModelsFromJson(String str) => UsersModels.fromJson(json.decode(str));

String usersModelsToJson(UsersModels data) => json.encode(data.toJson());

class UsersModels {
  String? name;
  String? email;
  String? phone;
  String? image;

  UsersModels({
    this.name,
    this.email,
    this.phone,
    this.image,
  });

  factory UsersModels.fromJson(Map<String, dynamic> json) => UsersModels(
    name: json["name"],
    email: json["email"],
    phone: json["phone"],
    image: json["image"],
  );

  get length => null;

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "phone": phone,
    "image": image,
  };
}
