// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? id;
  String? name;
  String? email;
  String? url;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.url,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    url: json["url"],
  );

  get number => null;

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "url": url,
  };
}
