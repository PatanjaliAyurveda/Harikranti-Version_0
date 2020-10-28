// To parse this JSON data, do
//
//     final cropTypeModel = cropTypeModelFromJson(jsonString);

import 'dart:convert';

List<CropTypeModel> cropTypeModelFromJson(String str) =>
    List<CropTypeModel>.from(
        json.decode(str).map((x) => CropTypeModel.fromJson(x)));

String cropTypeModelToJson(List<CropTypeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CropTypeModel {
  String id;
  String creationDate;
  String name;
  String type;
  bool active;

  CropTypeModel({
    this.id,
    this.creationDate,
    this.name,
    this.type,
    this.active,
  });

  factory CropTypeModel.fromJson(Map<String, dynamic> json) => CropTypeModel(
        id: json["id"],
        creationDate: json["creationDate"],
        name: json["name"],
        type: json["type"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creationDate": creationDate,
        "name": name,
        "type": type,
        "active": active,
      };
}
