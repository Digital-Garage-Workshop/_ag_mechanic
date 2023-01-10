// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobHistory _$JobHistoryFromJson(Map<String, dynamic> json) {
  return _JobHistory.fromJson(json);
}

/// @nodoc
mixin _$JobHistory {
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get job => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  String get organization => throw _privateConstructorUsedError;
  String get service => throw _privateConstructorUsedError;
  Vehicle get vehicle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobHistoryCopyWith<JobHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobHistoryCopyWith<$Res> {
  factory $JobHistoryCopyWith(
          JobHistory value, $Res Function(JobHistory) then) =
      _$JobHistoryCopyWithImpl<$Res, JobHistory>;
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String job,
      String memo,
      String organization,
      String service,
      Vehicle vehicle});

  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class _$JobHistoryCopyWithImpl<$Res, $Val extends JobHistory>
    implements $JobHistoryCopyWith<$Res> {
  _$JobHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? job = null,
    Object? memo = null,
    Object? organization = null,
    Object? service = null,
    Object? vehicle = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res> get vehicle {
    return $VehicleCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JobHistoryCopyWith<$Res>
    implements $JobHistoryCopyWith<$Res> {
  factory _$$_JobHistoryCopyWith(
          _$_JobHistory value, $Res Function(_$_JobHistory) then) =
      __$$_JobHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String job,
      String memo,
      String organization,
      String service,
      Vehicle vehicle});

  @override
  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$$_JobHistoryCopyWithImpl<$Res>
    extends _$JobHistoryCopyWithImpl<$Res, _$_JobHistory>
    implements _$$_JobHistoryCopyWith<$Res> {
  __$$_JobHistoryCopyWithImpl(
      _$_JobHistory _value, $Res Function(_$_JobHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? job = null,
    Object? memo = null,
    Object? organization = null,
    Object? service = null,
    Object? vehicle = null,
  }) {
    return _then(_$_JobHistory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      vehicle: null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobHistory implements _JobHistory {
  const _$_JobHistory(
      {required this.id,
      required this.date,
      required this.job,
      required this.memo,
      required this.organization,
      required this.service,
      required this.vehicle});

  factory _$_JobHistory.fromJson(Map<String, dynamic> json) =>
      _$$_JobHistoryFromJson(json);

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final String job;
  @override
  final String memo;
  @override
  final String organization;
  @override
  final String service;
  @override
  final Vehicle vehicle;

  @override
  String toString() {
    return 'JobHistory(id: $id, date: $date, job: $job, memo: $memo, organization: $organization, service: $service, vehicle: $vehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobHistory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, date, job, memo, organization, service, vehicle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobHistoryCopyWith<_$_JobHistory> get copyWith =>
      __$$_JobHistoryCopyWithImpl<_$_JobHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobHistoryToJson(
      this,
    );
  }
}

abstract class _JobHistory implements JobHistory {
  const factory _JobHistory(
      {required final String id,
      required final DateTime date,
      required final String job,
      required final String memo,
      required final String organization,
      required final String service,
      required final Vehicle vehicle}) = _$_JobHistory;

  factory _JobHistory.fromJson(Map<String, dynamic> json) =
      _$_JobHistory.fromJson;

  @override
  String get id;
  @override
  DateTime get date;
  @override
  String get job;
  @override
  String get memo;
  @override
  String get organization;
  @override
  String get service;
  @override
  Vehicle get vehicle;
  @override
  @JsonKey(ignore: true)
  _$$_JobHistoryCopyWith<_$_JobHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
