import 'dart:convert' as convert;
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kojin_data.freezed.dart';
part 'kojin_data.g.dart';

@freezed
class KojinData with _$KojinData {

  const factory KojinData(
      {required int id,
      required String firstName,
      required String lastName,
      required String alias,
      required int bornDate,
      required int deathDate,
      required int age,
      required String country,
      required List<String> jobs,
      required String profile}
      ) = _KojinData;
  factory KojinData.fromJson(Map<String, dynamic> json) => _$KojinDataFromJson(json);

  
}
