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
  JobStatus get status => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get bookedStart => throw _privateConstructorUsedError;
  DateTime get bookedEnd => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  Booking get booking => throw _privateConstructorUsedError;

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
      JobStatus status,
      String type,
      DateTime bookedStart,
      DateTime bookedEnd,
      DateTime? start,
      DateTime? end,
      String? memo,
      Booking booking});

  $BookingCopyWith<$Res> get booking;
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
    Object? status = null,
    Object? type = null,
    Object? bookedStart = null,
    Object? bookedEnd = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? memo = freezed,
    Object? booking = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bookedStart: null == bookedStart
          ? _value.bookedStart
          : bookedStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookedEnd: null == bookedEnd
          ? _value.bookedEnd
          : bookedEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingCopyWith<$Res> get booking {
    return $BookingCopyWith<$Res>(_value.booking, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
    });
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
      JobStatus status,
      String type,
      DateTime bookedStart,
      DateTime bookedEnd,
      DateTime? start,
      DateTime? end,
      String? memo,
      Booking booking});

  @override
  $BookingCopyWith<$Res> get booking;
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
    Object? status = null,
    Object? type = null,
    Object? bookedStart = null,
    Object? bookedEnd = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? memo = freezed,
    Object? booking = null,
  }) {
    return _then(_$_Job(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JobStatus,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bookedStart: null == bookedStart
          ? _value.bookedStart
          : bookedStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bookedEnd: null == bookedEnd
          ? _value.bookedEnd
          : bookedEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Job implements _Job {
  const _$_Job(
      {required this.id,
      required this.status,
      required this.type,
      required this.bookedStart,
      required this.bookedEnd,
      this.start,
      this.end,
      this.memo,
      required this.booking});

  factory _$_Job.fromJson(Map<String, dynamic> json) => _$$_JobFromJson(json);

  @override
  final String id;
  @override
  final JobStatus status;
  @override
  final String type;
  @override
  final DateTime bookedStart;
  @override
  final DateTime bookedEnd;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final String? memo;
  @override
  final Booking booking;

  @override
  String toString() {
    return 'Job(id: $id, status: $status, type: $type, bookedStart: $bookedStart, bookedEnd: $bookedEnd, start: $start, end: $end, memo: $memo, booking: $booking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Job &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bookedStart, bookedStart) ||
                other.bookedStart == bookedStart) &&
            (identical(other.bookedEnd, bookedEnd) ||
                other.bookedEnd == bookedEnd) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.booking, booking) || other.booking == booking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, type, bookedStart,
      bookedEnd, start, end, memo, booking);

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
      required final JobStatus status,
      required final String type,
      required final DateTime bookedStart,
      required final DateTime bookedEnd,
      final DateTime? start,
      final DateTime? end,
      final String? memo,
      required final Booking booking}) = _$_Job;

  factory _Job.fromJson(Map<String, dynamic> json) = _$_Job.fromJson;

  @override
  String get id;
  @override
  JobStatus get status;
  @override
  String get type;
  @override
  DateTime get bookedStart;
  @override
  DateTime get bookedEnd;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  String? get memo;
  @override
  Booking get booking;
  @override
  @JsonKey(ignore: true)
  _$$_JobCopyWith<_$_Job> get copyWith => throw _privateConstructorUsedError;
}
