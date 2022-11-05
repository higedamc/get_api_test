import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import '../models/kojin_data.dart';

class GSheetsClient {
  Future<List<KojinData>> fetchData() async {
    const url = 'localhost:8080';
    final Map<String, String> headers = {
      "Access-Control-Allow-Origin": "*",
      'Content-Type': 'application/json',
      'Accept': '*/*'
    };
    final response = await http.get(
        Uri.http(url,
            'https://script.google.com/macros/s/AKfycbw1OjP63HdeLJJH3w9dUCknfpe445EG7o4A7BIReIH58ukXA7YVNYv1CF-y0Jwh8gt1gQ/exec'),
        headers: headers);
    final jsonAppData = await jsonDecode(response.body) as List;
    log(jsonAppData.toString());
    return jsonAppData.map((e) => KojinData.fromJson(e)).toList();
  }
}
