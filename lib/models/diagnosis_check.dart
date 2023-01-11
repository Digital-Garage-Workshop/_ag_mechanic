import 'package:freezed_annotation/freezed_annotation.dart';

part 'diagnosis_check.freezed.dart';
part 'diagnosis_check.g.dart';

@freezed
class DiagnosisCheck with _$DiagnosisCheck {
  const factory DiagnosisCheck({
    required String id,
    required String name,
    required String slug,
  }) = _DiagnosisCheck;

  factory DiagnosisCheck.fromJson(Map<String, Object?> json) =>
      _$DiagnosisCheckFromJson(json);
}
