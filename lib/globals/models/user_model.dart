// To parse this JSON data, do
//
//     final user = userFromMap(jsonString);

import 'dart:convert';

User userFromMap(String str) => User.fromMap(json.decode(str));

String userToMap(User data) => json.encode(data.toMap());

class User {
  User({
    this.id,
    this.email,
  });

  int? id;
  String? email;

  User copyWith({
    int? id,
    String? email,
  }) =>
      User(
        id: id ?? this.id,
        email: email ?? this.email,
      );

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "email": email,
      };
}
