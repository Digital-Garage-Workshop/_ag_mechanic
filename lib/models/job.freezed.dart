// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  String get id => throw _privateConstructorUsedError;
  String get plateNumber => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  JobStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call(
      {String id,
      String plateNumber,
      DateTime date,
      String? startTime,
      String? endTime,
      JobStatus status});
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plateNumber = null,
    Object? date = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$_JobCopyWith(_$_Job value, $Res Function(_$_Job) then) =
      __$$_JobCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String plateNumber,
      DateTime date,
      String? startTime,
      String? endTime,
      JobStatus status});
}

/// @nodoc
class __$$_JobCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$_Job>
    implements _$$_JobCopyWith<$Res> {
  __$$_JobCopyWithImpl(_$_Job _value, $Res Function(_$_Job) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plateNumber = null,
    Object? date = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? status = null,
  }) {
    return _then(_$_Job(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Job implements _Job {
  const _$_Job(
      {required this.id,
      required this.plateNumber,
      required this.date,
      required this.startTime,
      required this.endTime,
      required this.status});

  factory _$_Job.fromJson(Map<String, dynamic> json) => _$$_JobFromJson(json);

  @override
  final String id;
  @override
  final String plateNumber;
  @override
  final DateTime date;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final JobStatus status;

  @override
  String toString() {
    return 'Job(id: $id, plateNumber: $plateNumber, date: $date, startTime: $startTime, endTime: $endTime, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Job &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, plateNumber, date, startTime, endTime, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobCopyWith<_$_Job> get copyWith =>
      __$$_JobCopyWithImpl<_$_Job>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobToJson(
      this,
    );
  }
}

abstract class _Job implements Job {
  const factory _Job(
      {required final String id,
      required final String plateNumber,
      required final DateTime date,
      required final String? startTime,
      required final String? endTime,
      required final JobStatus status}) = _$_Job;

  factory _Job.fromJson(Map<String, dynamic> json) = _$_Job.fromJson;

  @override
  String get id;
  @override
  String get plateNumber;
  @override
  DateTime get date;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  JobStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_JobCopyWith<_$_Job> get copyWith => throw _privateConstructorUsedError;
}
