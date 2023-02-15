import 'package:freezed_annotation/freezed_annotation.dart';

import 'vehicle.dart';

part 'job_history.freezed.dart';
part 'job_history.g.dart';

@freezed
class JobHistory with _$JobHistory {
  const factory JobHistory({
    required String id,
    required DateTime date,
    required String job,
    required String memo,
    required String organization,
    required String branch,
    required String service,
    required Vehicle vehicle,
  }) = _JobHistory;

  factory JobHistory.fromJson(Map<String, Object?> json) =>
      _$JobHistoryFromJson(json);
}
