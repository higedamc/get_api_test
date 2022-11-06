import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert' as convert;
import 'package:logger/logger.dart';

import '../models/test.dart';

final logger = Logger();

class PlaceholderClient {
  // List<Test> parsePosts(String responseBody) {
  //   final parsed = convert.jsonDecode(responseBody).cast<Map<String, dynamic>>();
  //   return parsed.map<Test>((json) => Test.fromJson(json)).toList();
  // }


  Future<List<Test>> fetchTest() async {
    final dio = Dio();
    const url = 'https://jsonplaceholder.typicode.com/posts';
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      // return compute(parsePosts, response.data.toString());
       final jsonData = response.data as List<dynamic>;
      logger.v(jsonData.toString());
      return jsonData.map((e) => Test.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load post');
    }
  }
}