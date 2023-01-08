import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required DateTime date,
    required String title,
    required EventType type,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json) => _$EventFromJson(json);
}

enum EventType {
  typeOne(Colors.red),
  typeTwo(Colors.green),
  typeThree(Colors.blue);

  final Color color;

  const EventType(this.color);
}
