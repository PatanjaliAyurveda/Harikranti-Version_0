// To parse this JSON data, do
//
//     final soilModel = soilModelFromJson(jsonString);

import 'dart:convert';

List<SoilModel> soilModelFromJson(String str) => new List<SoilModel>.from(
    json.decode(str).map((x) => SoilModel.fromJson(x)));

String soilModelToJson(List<SoilModel> data) =>
    json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class SoilModel {
  String id;
  String creationDate;
  String soilName;
  String imageUrl;
  bool active;

  SoilModel({
    this.id,
    this.creationDate,
    this.soilName,
    this.imageUrl,
    this.active,
  });

  factory SoilModel.fromJson(Map<String, dynamic> json) => new SoilModel(
        id: json["id"],
        creationDate: json["creationDate"],
        soilName: json["soilName"],
        imageUrl: json["imageUrl"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creationDate": creationDate,
        "soilName": soilName,
        "imageUrl": imageUrl,
        "active": active,
      };
}
