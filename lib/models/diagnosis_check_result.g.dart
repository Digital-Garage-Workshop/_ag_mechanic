// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_check_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiagnosisCheckResult _$$_DiagnosisCheckResultFromJson(
        Map<String, dynamic> json) =>
    _$_DiagnosisCheckResult(
      id: json['id'] as String,
      value: $enumDecode(_$CheckResultValueEnumMap, json['value']),
    );

Map<String, dynamic> _$$_DiagnosisCheckResultToJson(
        _$_DiagnosisCheckResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': _$CheckResultValueEnumMap[instance.value]!,
    };

const _$CheckResultValueEnumMap = {
  CheckResultValue.normal: 'normal',
  CheckResultValue.nonormal: 'nonormal',
};
