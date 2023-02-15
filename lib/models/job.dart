import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'booking.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
class Job with _$Job {
  const factory Job({
    required String id,
    required JobStatus status,
    required String type,
    required DateTime bookedStart,
    required DateTime bookedEnd,
    DateTime? start,
    DateTime? end,
    String? memo,
    required Booking booking,
  }) = _Job;

  factory Job.fromJson(Map<String, Object?> json) => _$JobFromJson(json);
}

enum JobStatus {
  pending(Colors.red, Icons.question_mark),
  ongoing(Colors.blue, Icons.car_repair),
  done(Colors.green, Icons.done);

  final Color color;
  final IconData icon;

  const JobStatus(this.color, this.icon);
}
