// To parse this JSON data, do
//
//     final equipmentsModel = equipmentsModelFromJson(jsonString);

import 'dart:convert';

List<EquipmentsModel> equipmentsModelFromJson(String str) =>
    List<EquipmentsModel>.from(
        json.decode(str).map((x) => EquipmentsModel.fromJson(x)));

String equipmentsModelToJson(List<EquipmentsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EquipmentsModel {
  String id;
  String creationDate;
  String name;
  dynamic description;
  String equipmentType;
  bool active;

  EquipmentsModel({
    this.id,
    this.creationDate,
    this.name,
    this.description,
    this.equipmentType,
    this.active,
  });

  factory EquipmentsModel.fromJson(Map<String, dynamic> json) =>
      EquipmentsModel(
        id: json["id"],
        creationDate: json["creationDate"],
        name: json["name"],
        description: json["description"],
        equipmentType: json["equipmentType"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creationDate": creationDate,
        "name": name,
        "description": description,
        "equipmentType": equipmentType,
        "active": active,
      };
}
