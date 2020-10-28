// To parse this JSON data, do
//
//     final villageMapModel = villageMapModelFromJson(jsonString);

import 'dart:convert';

VillageMapModel villageMapModelFromJson(String str) =>
    VillageMapModel.fromJson(json.decode(str));

String villageMapModelToJson(VillageMapModel data) =>
    json.encode(data.toJson());

class VillageMapModel {
  String agentId;
  String id;
  List<LocationPin> locationPins;
  String villageId;
  String villageMapImageUrl;

  VillageMapModel({
    this.agentId,
    this.id,
    this.locationPins,
    this.villageId,
    this.villageMapImageUrl,
  });

  factory VillageMapModel.fromJson(Map<String, dynamic> json) =>
      VillageMapModel(
        agentId: json["agentId"],
        id: json["id"],
        locationPins: List<LocationPin>.from(
            json["locationPins"].map((x) => LocationPin.fromJson(x))),
        villageId: json["villageId"],
        villageMapImageUrl: json["villageMapImageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "agentId": agentId,
        "id": id,
        "locationPins": List<dynamic>.from(locationPins.map((x) => x.toJson())),
        "villageId": villageId,
        "villageMapImageUrl": villageMapImageUrl,
      };
}

class LocationPin {
  String lattitude;
  String longitude;

  LocationPin({
    this.lattitude,
    this.longitude,
  });

  factory LocationPin.fromJson(Map<String, dynamic> json) => LocationPin(
        lattitude: json["lattitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "lattitude": lattitude,
        "longitude": longitude,
      };
}
