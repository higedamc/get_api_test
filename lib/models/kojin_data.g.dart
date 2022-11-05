// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kojin_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KojinData _$$_KojinDataFromJson(Map<String, dynamic> json) => _$_KojinData(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      alias: json['alias'] as String,
      bornDate: json['bornDate'] as int,
      deathDate: json['deathDate'] as int,
      age: json['age'] as int,
      country: json['country'] as String,
      jobs: (json['jobs'] as List<dynamic>).map((e) => e as String).toList(),
      profile: json['profile'] as String,
    );

Map<String, dynamic> _$$_KojinDataToJson(_$_KojinData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'alias': instance.alias,
      'bornDate': instance.bornDate,
      'deathDate': instance.deathDate,
      'age': instance.age,
      'country': instance.country,
      'jobs': instance.jobs,
      'profile': instance.profile,
    };
