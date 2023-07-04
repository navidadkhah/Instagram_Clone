// To parse this JSON data, do
//
//     final signUp = signUpFromMap(jsonString);

import 'dart:convert';

import 'package:instagram_flutter/globals/models/user_model.dart';

SignUp signUpFromStr(String str) => SignUp.fromMap(json.decode(str));
SignUp signUpFromMap(Map<String, dynamic> map) => SignUp.fromMap(map);

String signUpToMap(SignUp data) => json.encode(data.toMap());

class SignUp {
  SignUp({
    user,
    refresh,
    access,
  });

  User? user;
  String? refresh;
  String? access;

  SignUp copyWith({
    User? user,
    String? refresh,
    String? access,
  }) =>
      SignUp(
        user: user ?? this.user,
        refresh: refresh ?? this.refresh,
        access: access ?? this.access,
      );

  factory SignUp.fromMap(Map<String, dynamic> json) => SignUp(
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        refresh: json["refresh"],
        access: json["access"],
      );

  Map<String, dynamic> toMap() => {
        "user": user?.toMap(),
        "refresh": refresh,
        "access": access,
      };
}
