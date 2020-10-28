import 'dart:convert';
import 'package:Haritkranti/error_handler.dart';
import 'package:Haritkranti/variables.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

class ApiBase {
  // String scheme = "http";
  // String host = "13.232.97.197";
  // // String host = "192.168.2.144";
  // int port = 8080;
  ErrorHandling _errorHandling = ErrorHandling();

  List serviceList = List();

  addServie() {
    serviceList.add("/api/getAgentUsersList");
    serviceList.add("/api/getFamilyMembersNew");
    serviceList.add("/api/getUserLandDetails");
    serviceList.add("/api/getFarmerExtraDetail");
    serviceList.add("/api/getAgentVillageList");
    serviceList.add("/api/getFarmerListOfVillage");
    serviceList.add("/api/getUserReportHistoryResponseListByKhasra");
    serviceList.add("/api/getMilkingAnimalDetails");
    serviceList.add("/api/getBeekeepingDetails");
    serviceList.add("/api/getUserCropListByKhasraNo");
    serviceList.add("/api/getGovernmentSchemesList");
    serviceList.add("/api/getUserSubsidies");
    serviceList.add("/api/searchUsers");
    serviceList.add("/api/sendOTPFarmerVerification");
    serviceList.add("/api/verifyOTPFarmerVerification");
  }

  Map<String, String> authHeader = {
    "Content-Type": "application/json",
  };

  Future<dynamic> get(BuildContext context, String serviceName,
      Map<String, dynamic> params, String userTokenNew) async {
    addServie();
    var responseJson;

    if (serviceList.contains(serviceName)) {
      authHeader.putIfAbsent("Authorization", () => "Bearer $userTokenNew");
      print(authHeader);
    }

    try {
      final response = await http.get(
        Uri(
          scheme: scheme,
          host: host,
          port: port,
          path: serviceName,
          queryParameters: params != null ? params : null,
        ),
        headers: authHeader,
      );
      responseJson = _returnResponse(context, response);
    } on SocketException {
      _errorHandling.showErrorDailog(
          context, "Network Error", "Check your internet connection");
    }
    return responseJson;
  }

  Future<dynamic> post(BuildContext context, String serviceName, var params,
      dynamic body, String userTokenNew) async {
    addServie();
    var responseJson;
    if (serviceList.contains(serviceName)) {
      authHeader.putIfAbsent("Authorization", () => "Bearer $userTokenNew");
      print(authHeader);
    }
    try {
      final response = await http.post(
        Uri(
          scheme: scheme,
          host: host,
          port: port,
          path: serviceName,
          // queryParameters: params != null ? params : null,
        ),
        body: json.encode(body),
        headers: authHeader,
      );
      print("###${json.encode(body)}###");
      print(response.statusCode);
      print(response.body);
      responseJson = _returnResponse(context, response);
    } on SocketException {
      _errorHandling.showErrorDailog(
          context, "Network Error", "Check your internet connection");
      return responseJson;
    }
    return responseJson;
  }

  Future<dynamic> put(BuildContext context, String serviceName, Map params,
      dynamic body, String userTokenNew) async {
    addServie();
    var responseJson;
    if (serviceList.contains(serviceName)) {
      authHeader.putIfAbsent("Authorization", () => "$userTokenNew");
    }
    try {
      final response = await http.post(
        Uri(
          scheme: scheme,
          host: host,
          port: port,
          path: serviceName,
          // queryParameters: params != null ? params : null,
        ),
        body: json.encode(body),
        headers: authHeader,
      );
      print(response.statusCode);
      print(response.body);
      responseJson = _returnResponse(context, response);
    } on SocketException {
      _errorHandling.showErrorDailog(
          context, "Network Error", "Check your internet connection");
    }
    return responseJson;
  }

  Future<dynamic> delete(BuildContext context, String serviceName, Map params,
      String userToken) async {
    var responseJson;
    if (serviceList.contains(serviceName)) {
      authHeader.putIfAbsent("Authorization", () => "Bearer $userToken");
    }
    try {
      final response = await http.delete(
        Uri(
          scheme: scheme,
          host: host,
          port: port,
          path: serviceName,
          queryParameters: params != null ? params : null,
        ),
        headers: authHeader,
      );
      responseJson = _returnResponse(context, response);
    } on SocketException {
      _errorHandling.showErrorDailog(
          context, "Network Error", "Check your internet connection");
    }
    return responseJson;
  }

  http.Response _returnResponse(BuildContext context, http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = response.body;
        print(responseJson);
        return response;
      case 400:
        var d = json.decode(response.body);
        String errorMessage =
            d["errorMessage"] != null ? d["errorMessage"] : "Data not found";
        _errorHandling.showErrorDailog(context, "Bad Request", errorMessage);
        return response;
      case 409:
        var d = json.decode(response.body);
        String errorMessage =
            d["errorMessage"] != null ? d["errorMessage"] : "Data not found";
        _errorHandling.showErrorDailog(context, "", errorMessage);
        return response;
      case 401:
        _errorHandling.showErrorDailog(
            context, "Unauthorized", "You are Unauthorized");
        return response;
      case 403:
        _errorHandling.showErrorDailog(
            context, "Unauthorized", "You are Unauthorized");
        return response;
      case 500:
      default:
        _errorHandling.showErrorDailog(
            context, "Connection", "No Connection found");
        return response;
    }
  }
}
