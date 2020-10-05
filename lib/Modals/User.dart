// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.userName,
    this.id,
    this.utype,
    this.issued,
    this.expires,
  });

  String accessToken;
  String tokenType;
  int expiresIn;
  String userName;
  String id;
  String utype;
  String issued;
  String expires;

  factory User.fromJson(Map<String, dynamic> json) => User(
    accessToken: json["access_token"],
    tokenType: json["token_type"],
    expiresIn: json["expires_in"],
    userName: json["userName"],
    id: json["id"],
    utype: json["utype"],
    issued: json[".issued"],
    expires: json[".expires"],
  );

  Map<String, dynamic> toJson() => {
    "access_token": accessToken,
    "token_type": tokenType,
    "expires_in": expiresIn,
    "userName": userName,
    "id": id,
    "utype": utype,
    ".issued": issued,
    ".expires": expires,
  };
}
