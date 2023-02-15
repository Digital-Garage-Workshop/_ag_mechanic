import 'package:freezed_annotation/freezed_annotation.dart';

part 'diagnosis_check_result.freezed.dart';
part 'diagnosis_check_result.g.dart';

@freezed
class DiagnosisCheckResult with _$DiagnosisCheckResult {
  const factory DiagnosisCheckResult({
    required String id,
    required CheckResultValue value,
  }) = _DiagnosisCheckResult;

  factory DiagnosisCheckResult.fromJson(Map<String, Object?> json) =>
      _$DiagnosisCheckResultFromJson(json);
}

enum CheckResultValue {
  normal('normal'),
  nonormal('nonormal');

  const CheckResultValue(this.value);
  final String value;
}
