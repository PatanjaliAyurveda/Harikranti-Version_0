// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String id;
  String creationDate;
  String firstName;
  String lastName;
  String fatherName;
  String password;
  String state;
  String district;
  String village;
  dynamic villageList;
  dynamic landSizeAcre;
  List<String> landKhasraNos;
  dynamic tehsils;
  dynamic cropStanding;
  String primaryPhone;
  String language;
  List<Role> roles;
  dynamic profileImage;
  Otp otp;
  String authToken;
  String createdVia;
  bool active;

  LoginModel({
    this.id,
    this.creationDate,
    this.firstName,
    this.lastName,
    this.fatherName,
    this.password,
    this.state,
    this.district,
    this.village,
    this.villageList,
    this.landSizeAcre,
    this.landKhasraNos,
    this.tehsils,
    this.cropStanding,
    this.primaryPhone,
    this.language,
    this.roles,
    this.profileImage,
    this.otp,
    this.authToken,
    this.createdVia,
    this.active,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => new LoginModel(
        id: json["id"],
        creationDate: json["creationDate"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        fatherName: json["fatherName"],
        password: json["password"],
        state: json["state"],
        district: json["district"],
        village: json["village"],
        villageList: json["villageList"],
        landSizeAcre: json["landSizeAcre"],
        landKhasraNos: json["landKhasraNos"] != null
            ? new List<String>.from(json["landKhasraNos"].map((x) => x))
            : [],
        tehsils: json["tehsils"],
        cropStanding: json["cropStanding"],
        primaryPhone: json["primaryPhone"],
        language: json["language"],
        roles: new List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
        profileImage: json["profileImage"],
        otp: Otp.fromJson(json["otp"]),
        authToken: json["authToken"],
        createdVia: json["createdVia"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creationDate": creationDate,
        "firstName": firstName,
        "lastName": lastName,
        "fatherName": fatherName,
        "password": password,
        "state": state,
        "district": district,
        "village": village,
        "villageList": villageList,
        "landSizeAcre": landSizeAcre,
        "landKhasraNos": new List<dynamic>.from(landKhasraNos.map((x) => x)),
        "tehsils": tehsils,
        "cropStanding": cropStanding,
        "primaryPhone": primaryPhone,
        "language": language,
        "roles": new List<dynamic>.from(roles.map((x) => x.toJson())),
        "profileImage": profileImage,
        "otp": otp.toJson(),
        "authToken": authToken,
        "createdVia": createdVia,
        "active": active,
      };
}

class Otp {
  dynamic id;
  String creationDate;
  String otp;
  String expiryTime;
  bool active;

  Otp({
    this.id,
    this.creationDate,
    this.otp,
    this.expiryTime,
    this.active,
  });

  factory Otp.fromJson(Map<String, dynamic> json) => new Otp(
        id: json["id"],
        creationDate: json["creationDate"],
        otp: json["otp"],
        expiryTime: json["expiryTime"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creationDate": creationDate,
        "otp": otp,
        "expiryTime": expiryTime,
        "active": active,
      };
}

class Role {
  String id;
  String creationDate;
  String description;
  String roleName;
  bool active;

  Role({
    this.id,
    this.creationDate,
    this.description,
    this.roleName,
    this.active,
  });

  factory Role.fromJson(Map<String, dynamic> json) => new Role(
        id: json["id"],
        creationDate: json["creationDate"],
        description: json["description"],
        roleName: json["roleName"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creationDate": creationDate,
        "description": description,
        "roleName": roleName,
        "active": active,
      };
}
