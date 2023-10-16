// To parse this JSON data, do
//
//     final modelUsers = modelUsersFromJson(jsonString);

import 'dart:convert';

ModelUsers modelUsersFromJson(String str) => ModelUsers.fromJson(json.decode(str));

String modelUsersToJson(ModelUsers data) => json.encode(data.toJson());

class ModelUsers {
  String? name;
  String? number;
  String? image;

  ModelUsers({
    this.name,
    this.number,
    this.image,
  });

  factory ModelUsers.fromJson(Map<String, dynamic> json) => ModelUsers(
    name: json["name"],
    number: json["number"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "number": number,
    "image": image,
  };
}
