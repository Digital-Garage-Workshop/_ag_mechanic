// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      date: DateTime.parse(json['date'] as String),
      title: json['title'] as String,
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'title': instance.title,
      'type': _$EventTypeEnumMap[instance.type]!,
    };

const _$EventTypeEnumMap = {
  EventType.typeOne: 'typeOne',
  EventType.typeTwo: 'typeTwo',
  EventType.typeThree: 'typeThree',
};
