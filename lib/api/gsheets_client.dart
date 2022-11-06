import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/kojin_data.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class GSheetsClient {
  Future<List<KojinData>?> fetchData() async {
    // const url = 'localhost:8080';
    // final Map<String, String> headers = {
    //   "Access-Control-Allow-Origin": "*",
    //   'Content-Type': 'application/json',
    //   'Accept': '*/*'
    // };
    // final response = await http.get(
    //     Uri.http(url,
    //         'https://script.google.com/macros/s/AKfycbw1OjP63HdeLJJH3w9dUCknfpe445EG7o4A7BIReIH58ukXA7YVNYv1CF-y0Jwh8gt1gQ/exec'),
    //     headers: headers);
    // final decodedJson = await jsonDecode(response.body) as List;
    // logger.v(decodedJson.toString());
    // return jsonAppData.map((e) => KojinData.fromJson(e)).toList();
    final dio = Dio();
    final url = dotenv.env['GSHEETS_URL']!;
    // const url = 'https://script.google.com/macros/s/AKfycbyEBwOY_B4sNSsWAkpaTMNUNuTBLGGeH_65pJSfvasf/dev';
    // const url = 'https://script.googleusercontent.com/macros/echo?user_content_key=lRUviZBc682Fc3sE-5SB_oDbi7wmzh8w7Gc_xny5-Ka0LDHlU28ucTqEsGrkgZtv39gKWMoEvNz3UKKDlW9rT0EzoXpcx7NRm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnDpoH4XdMDQ-jJtcs1PCL4ZX1hR974NK0jZOVh30oi4V9IEWqTgPLKLlFrGuHuqArg&lib=MQJMWAnZgK8ldBVbYoygdA2MVPUqvxBFA';
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      logger.v(response.data.runtimeType.toString());
      final jsonAppData = response.data as List<dynamic>;
      // final decodedJson = await jsonDecode(response.data);
      logger.v(jsonAppData.toString());
      // logger.v(decodedJson);
      return jsonAppData.map((e) => KojinData.fromJson(e)).toList();
      // return decodedJson.map((e) => KojinData.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
