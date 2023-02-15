import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer.dart';
import 'vehicle.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    required String id,
    required bool isDiagnosed,
    required Customer customer,
    required Vehicle vehicle,
  }) = _Booking;

  factory Booking.fromJson(Map<String, Object?> json) =>
      _$BookingFromJson(json);
}
