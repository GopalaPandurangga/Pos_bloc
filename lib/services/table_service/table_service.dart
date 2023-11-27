import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pos_terpadu_bloc/model/table/tables.dart';

import '../global_service/global_service.dart';
import '../local_data_service/local_data_service.dart';

class TableService {
  String endpoint = "tables";
  static const baseUrl = GlobalService.baseUrl;
  final token = DB.getToken();
  String ownerId = DB.getUser()?['id'] ?? '';

  Future<List<Tables>> getTables() async {
    await DB.init();
    var response = await Dio().get(
      '$baseUrl/api/$endpoint',
      options: Options(
        headers: {
          'Authorization': token,
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;

    List<Tables> tables =
        (obj["data"] as List).map((item) => Tables.fromJson(item)).toList();

    return tables;
  }
}
