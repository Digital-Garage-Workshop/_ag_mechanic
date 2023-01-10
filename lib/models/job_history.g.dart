// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobHistory _$$_JobHistoryFromJson(Map<String, dynamic> json) =>
    _$_JobHistory(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      job: json['job'] as String,
      memo: json['memo'] as String,
      organization: json['organization'] as String,
      service: json['service'] as String,
      vehicle: Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JobHistoryToJson(_$_JobHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'job': instance.job,
      'memo': instance.memo,
      'organization': instance.organization,
      'service': instance.service,
      'vehicle': instance.vehicle,
    };
