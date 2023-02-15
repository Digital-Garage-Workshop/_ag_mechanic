import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
class Vehicle with _$Vehicle {
  const factory Vehicle({
    required String vin,
    required String plateNumber,
    required String manufacturer,
    required String model,
    required int engineSize,
    required String? fuelType,
    required int? mileage,
    required String? mileageUnit,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, Object?> json) =>
      _$VehicleFromJson(json);
}
