// To parse this JSON data, do
//
//     final fruitModel = fruitModelFromJson(jsonString);

import 'dart:convert';

List<FruitModel> fruitModelFromJson(String str) =>
    List<FruitModel>.from(json.decode(str).map((x) => FruitModel.fromJson(x)));

String fruitModelToJson(List<FruitModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FruitModel {
  String id;
  String creationDate;
  String name;
  CropGroup cropGroup;
  List<FruitVarietyLocation> fruitVarietyLocations;
  bool active;

  FruitModel({
    this.id,
    this.creationDate,
    this.name,
    this.cropGroup,
    this.fruitVarietyLocations,
    this.active,
  });

  factory FruitModel.fromJson(Map<String, dynamic> json) => FruitModel(
        id: json["id"],
        creationDate: json["creationDate"],
        name: json["name"],
        cropGroup: CropGroup.fromJson(json["cropGroup"]),
        fruitVarietyLocations: List<FruitVarietyLocation>.from(
            json["fruitVarietyLocations"]
                .map((x) => FruitVarietyLocation.fromJson(x))),
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creationDate": creationDate,
        "name": name,
        "cropGroup": cropGroup.toJson(),
        "fruitVarietyLocations":
            List<dynamic>.from(fruitVarietyLocations.map((x) => x.toJson())),
        "active": active,
      };
}

class CropGroup {
  String id;
  String creationDate;
  String name;
  String type;
  bool active;
  String stateAbbreviation;

  CropGroup({
    this.id,
    this.creationDate,
    this.name,
    this.type,
    this.active,
    this.stateAbbreviation,
  });

  factory CropGroup.fromJson(Map<String, dynamic> json) => CropGroup(
        id: json["id"],
        creationDate: json["creationDate"],
        name: json["name"],
        type: json["type"] == null ? null : json["type"],
        active: json["active"],
        stateAbbreviation: json["stateAbbreviation"] == null
            ? null
            : json["stateAbbreviation"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "creationDate": creationDate,
        "name": name,
        "type": type == null ? null : type,
        "active": active,
        "stateAbbreviation":
            stateAbbreviation == null ? null : stateAbbreviation,
      };
}

class FruitVarietyLocation {
  CropGroup state;
  String spacingUnit;
  double columnSpace;
  double rowSpace;
  int noOfPlantsPerAcre;
  String fertilizerUnit;
  double n;
  double p;
  double k;
  double fym;
  List<DosagePercentage> dosagePercentages;

  FruitVarietyLocation({
    this.state,
    this.spacingUnit,
    this.columnSpace,
    this.rowSpace,
    this.noOfPlantsPerAcre,
    this.fertilizerUnit,
    this.n,
    this.p,
    this.k,
    this.fym,
    this.dosagePercentages,
  });

  factory FruitVarietyLocation.fromJson(Map<String, dynamic> json) =>
      FruitVarietyLocation(
        state: CropGroup.fromJson(json["state"]),
        spacingUnit: json["spacingUnit"],
        columnSpace: json["columnSpace"].toDouble(),
        rowSpace: json["rowSpace"].toDouble(),
        noOfPlantsPerAcre: json["noOfPlantsPerAcre"],
        fertilizerUnit: json["fertilizerUnit"],
        n: json["n"],
        p: json["p"].toDouble(),
        k: json["k"].toDouble(),
        fym: json["fym"].toDouble(),
        dosagePercentages: List<DosagePercentage>.from(
            json["dosagePercentages"].map((x) => DosagePercentage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "state": state.toJson(),
        "spacingUnit": spacingUnit,
        "columnSpace": columnSpace,
        "rowSpace": rowSpace,
        "noOfPlantsPerAcre": noOfPlantsPerAcre,
        "fertilizerUnit": fertilizerUnit,
        "n": n,
        "p": p,
        "k": k,
        "fym": fym,
        "dosagePercentages":
            List<dynamic>.from(dosagePercentages.map((x) => x.toJson())),
      };
}

class DosagePercentage {
  String timeUnit;
  int time;
  int fymPercentage;
  int nPercentage;
  int pPercentage;
  int kPercentage;

  DosagePercentage({
    this.timeUnit,
    this.time,
    this.fymPercentage,
    this.nPercentage,
    this.pPercentage,
    this.kPercentage,
  });

  factory DosagePercentage.fromJson(Map<String, dynamic> json) =>
      DosagePercentage(
        timeUnit: json["timeUnit"],
        time: json["time"],
        fymPercentage: json["fymPercentage"],
        nPercentage: json["nPercentage"],
        pPercentage: json["pPercentage"],
        kPercentage: json["kPercentage"],
      );

  Map<String, dynamic> toJson() => {
        "timeUnit": timeUnit,
        "time": time,
        "fymPercentage": fymPercentage,
        "nPercentage": nPercentage,
        "pPercentage": pPercentage,
        "kPercentage": kPercentage,
      };
}
