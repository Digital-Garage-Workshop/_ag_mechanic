// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiagnosisCheck _$DiagnosisCheckFromJson(Map<String, dynamic> json) {
  return _DiagnosisCheck.fromJson(json);
}

/// @nodoc
mixin _$DiagnosisCheck {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiagnosisCheckCopyWith<DiagnosisCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosisCheckCopyWith<$Res> {
  factory $DiagnosisCheckCopyWith(
          DiagnosisCheck value, $Res Function(DiagnosisCheck) then) =
      _$DiagnosisCheckCopyWithImpl<$Res, DiagnosisCheck>;
  @useResult
  $Res call({String id, String name, String slug});
}

/// @nodoc
class _$DiagnosisCheckCopyWithImpl<$Res, $Val extends DiagnosisCheck>
    implements $DiagnosisCheckCopyWith<$Res> {
  _$DiagnosisCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiagnosisCheckCopyWith<$Res>
    implements $DiagnosisCheckCopyWith<$Res> {
  factory _$$_DiagnosisCheckCopyWith(
          _$_DiagnosisCheck value, $Res Function(_$_DiagnosisCheck) then) =
      __$$_DiagnosisCheckCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String slug});
}

/// @nodoc
class __$$_DiagnosisCheckCopyWithImpl<$Res>
    extends _$DiagnosisCheckCopyWithImpl<$Res, _$_DiagnosisCheck>
    implements _$$_DiagnosisCheckCopyWith<$Res> {
  __$$_DiagnosisCheckCopyWithImpl(
      _$_DiagnosisCheck _value, $Res Function(_$_DiagnosisCheck) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
  }) {
    return _then(_$_DiagnosisCheck(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiagnosisCheck implements _DiagnosisCheck {
  const _$_DiagnosisCheck(
      {required this.id, required this.name, required this.slug});

  factory _$_DiagnosisCheck.fromJson(Map<String, dynamic> json) =>
      _$$_DiagnosisCheckFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;

  @override
  String toString() {
    return 'DiagnosisCheck(id: $id, name: $name, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiagnosisCheck &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiagnosisCheckCopyWith<_$_DiagnosisCheck> get copyWith =>
      __$$_DiagnosisCheckCopyWithImpl<_$_DiagnosisCheck>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiagnosisCheckToJson(
      this,
    );
  }
}

abstract class _DiagnosisCheck implements DiagnosisCheck {
  const factory _DiagnosisCheck(
      {required final String id,
      required final String name,
      required final String slug}) = _$_DiagnosisCheck;

  factory _DiagnosisCheck.fromJson(Map<String, dynamic> json) =
      _$_DiagnosisCheck.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$_DiagnosisCheckCopyWith<_$_DiagnosisCheck> get copyWith =>
      throw _privateConstructorUsedError;
}
