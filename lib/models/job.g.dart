// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      id: json['id'] as String,
      status: $enumDecode(_$JobStatusEnumMap, json['status']),
      type: json['type'] as String,
      bookedStart: DateTime.parse(json['bookedStart'] as String),
      bookedEnd: DateTime.parse(json['bookedEnd'] as String),
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      memo: json['memo'] as String?,
      booking: Booking.fromJson(json['booking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      'id': instance.id,
      'status': _$JobStatusEnumMap[instance.status]!,
      'type': instance.type,
      'bookedStart': instance.bookedStart.toIso8601String(),
      'bookedEnd': instance.bookedEnd.toIso8601String(),
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
      'memo': instance.memo,
      'booking': instance.booking,
    };

const _$JobStatusEnumMap = {
  JobStatus.pending: 'pending',
  JobStatus.ongoing: 'ongoing',
  JobStatus.done: 'done',
};
