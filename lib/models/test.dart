import 'package:freezed_annotation/freezed_annotation.dart';

part 'test.freezed.dart';
part 'test.g.dart';

@freezed
class Test with _$Test {
  const factory Test(
    {
      required int? userId,
      required int? id,
      required String? title,
      required String? body
    }
   ) = _Test;

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}