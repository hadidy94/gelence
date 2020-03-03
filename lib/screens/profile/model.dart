// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

ProfileModel postsFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String postsToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  String email;
  bool hasRegistered;
  dynamic loginProvider;

  ProfileModel({
    this.email,
    this.hasRegistered,
    this.loginProvider,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
    email: json["Email"],
    hasRegistered: json["HasRegistered"],
    loginProvider: json["LoginProvider"],
  );

  Map<String, dynamic> toJson() => {
    "Email": email,
    "HasRegistered": hasRegistered,
    "LoginProvider": loginProvider,
  };
}
