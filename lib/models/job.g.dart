// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      id: json['id'] as String,
      plateNumber: json['plateNumber'] as String,
      date: DateTime.parse(json['date'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      status: $enumDecode(_$JobStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      'id': instance.id,
      'plateNumber': instance.plateNumber,
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'status': _$JobStatusEnumMap[instance.status]!,
    };

const _$JobStatusEnumMap = {
  JobStatus.pending: 'pending',
  JobStatus.ongoing: 'ongoing',
  JobStatus.done: 'done',
};
