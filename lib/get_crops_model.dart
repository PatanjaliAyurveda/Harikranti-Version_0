// To parse this JSON data, do
//
//     final cropsModel = cropsModelFromJson(jsonString);

import 'dart:convert';

List<CropsModel> cropsModelFromJson(String str) => new List<CropsModel>.from(
    json.decode(str).map((x) => CropsModel.fromJson(x)));

String cropsModelToJson(List<CropsModel> data) =>
    json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class CropsModel {
  String id;
  String creationDate;
  String cropName;
  String cropType;
  List<Fertilizer> fertilizers;
  bool active;

  CropsModel({
    this.id,
    this.creationDate,
    this.cropName,
    this.cropType,
    this.fertilizers,
    this.active,
  });

  factory CropsModel.fromJson(Map<String, dynamic> json) => new CropsModel(
        id: json["id"],
        creationDate: json["creationDate"],
        cropName: json["cropName"],
        cropType: json["cropType"],
        fertilizers: new List<Fertilizer>.from(
            json["fertilizers"].map((x) => Fertilizer.fromJson(x))),
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creationDate": creationDate,
        "cropName": cropName,
        "cropType": cropType,
        "fertilizers":
            new List<dynamic>.from(fertilizers.map((x) => x.toJson())),
        "active": active,
      };
}

class Fertilizer {
  dynamic id;
  String creationDate;
  dynamic name;
  String categoryType;
  String fertilizerType;
  double nRatio;
  double pRatio;
  double kRatio;
  int quantityGood;
  int quantityMedium;
  int quantityPoor;
  int irrigated;
  int semiIrrigated;
  int rainfed;
  dynamic fertId;
  String unit;
  bool active;

  Fertilizer({
    this.id,
    this.creationDate,
    this.name,
    this.categoryType,
    this.fertilizerType,
    this.nRatio,
    this.pRatio,
    this.kRatio,
    this.quantityGood,
    this.quantityMedium,
    this.quantityPoor,
    this.irrigated,
    this.semiIrrigated,
    this.rainfed,
    this.fertId,
    this.unit,
    this.active,
  });

  factory Fertilizer.fromJson(Map<String, dynamic> json) => new Fertilizer(
        id: json["id"],
        creationDate: json["creationDate"],
        name: json["name"],
        categoryType: json["categoryType"],
        fertilizerType: json["fertilizerType"],
        nRatio: json["nRatio"],
        pRatio: json["pRatio"],
        kRatio: json["kRatio"],
        quantityGood: json["quantityGood"],
        quantityMedium: json["quantityMedium"],
        quantityPoor: json["quantityPoor"],
        irrigated: json["irrigated"],
        semiIrrigated: json["semiIrrigated"],
        rainfed: json["rainfed"],
        fertId: json["fertId"],
        unit: json["unit"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creationDate": creationDate,
        "name": name,
        "categoryType": categoryType,
        "fertilizerType": fertilizerType,
        "nRatio": nRatio,
        "pRatio": pRatio,
        "kRatio": kRatio,
        "quantityGood": quantityGood,
        "quantityMedium": quantityMedium,
        "quantityPoor": quantityPoor,
        "irrigated": irrigated,
        "semiIrrigated": semiIrrigated,
        "rainfed": rainfed,
        "fertId": fertId,
        "unit": unit,
        "active": active,
      };
}
