// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kojin_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KojinData _$KojinDataFromJson(Map<String, dynamic> json) {
  return _KojinData.fromJson(json);
}

/// @nodoc
mixin _$KojinData {
// required int? id,
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get alias =>
      throw _privateConstructorUsedError; // required int? bornDate,
// required int? deathDate,
// required int? age,
  String? get country => throw _privateConstructorUsedError;
  List<String>? get jobs => throw _privateConstructorUsedError;
  String? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KojinDataCopyWith<KojinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KojinDataCopyWith<$Res> {
  factory $KojinDataCopyWith(KojinData value, $Res Function(KojinData) then) =
      _$KojinDataCopyWithImpl<$Res, KojinData>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? alias,
      String? country,
      List<String>? jobs,
      String? profile});
}

/// @nodoc
class _$KojinDataCopyWithImpl<$Res, $Val extends KojinData>
    implements $KojinDataCopyWith<$Res> {
  _$KojinDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? alias = freezed,
    Object? country = freezed,
    Object? jobs = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      jobs: freezed == jobs
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KojinDataCopyWith<$Res> implements $KojinDataCopyWith<$Res> {
  factory _$$_KojinDataCopyWith(
          _$_KojinData value, $Res Function(_$_KojinData) then) =
      __$$_KojinDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? alias,
      String? country,
      List<String>? jobs,
      String? profile});
}

/// @nodoc
class __$$_KojinDataCopyWithImpl<$Res>
    extends _$KojinDataCopyWithImpl<$Res, _$_KojinData>
    implements _$$_KojinDataCopyWith<$Res> {
  __$$_KojinDataCopyWithImpl(
      _$_KojinData _value, $Res Function(_$_KojinData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? alias = freezed,
    Object? country = freezed,
    Object? jobs = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$_KojinData(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      jobs: freezed == jobs
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KojinData implements _KojinData {
  const _$_KojinData(
      {required this.firstName,
      required this.lastName,
      required this.alias,
      required this.country,
      required final List<String>? jobs,
      required this.profile})
      : _jobs = jobs;

  factory _$_KojinData.fromJson(Map<String, dynamic> json) =>
      _$$_KojinDataFromJson(json);

// required int? id,
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? alias;
// required int? bornDate,
// required int? deathDate,
// required int? age,
  @override
  final String? country;
  final List<String>? _jobs;
  @override
  List<String>? get jobs {
    final value = _jobs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? profile;

  @override
  String toString() {
    return 'KojinData(firstName: $firstName, lastName: $lastName, alias: $alias, country: $country, jobs: $jobs, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KojinData &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other._jobs, _jobs) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, alias,
      country, const DeepCollectionEquality().hash(_jobs), profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KojinDataCopyWith<_$_KojinData> get copyWith =>
      __$$_KojinDataCopyWithImpl<_$_KojinData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KojinDataToJson(
      this,
    );
  }
}

abstract class _KojinData implements KojinData {
  const factory _KojinData(
      {required final String? firstName,
      required final String? lastName,
      required final String? alias,
      required final String? country,
      required final List<String>? jobs,
      required final String? profile}) = _$_KojinData;

  factory _KojinData.fromJson(Map<String, dynamic> json) =
      _$_KojinData.fromJson;

  @override // required int? id,
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get alias;
  @override // required int? bornDate,
// required int? deathDate,
// required int? age,
  String? get country;
  @override
  List<String>? get jobs;
  @override
  String? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_KojinDataCopyWith<_$_KojinData> get copyWith =>
      throw _privateConstructorUsedError;
}
