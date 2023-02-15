// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vehicle _$$_VehicleFromJson(Map<String, dynamic> json) => _$_Vehicle(
      vin: json['vin'] as String,
      plateNumber: json['plateNumber'] as String,
      manufacturer: json['manufacturer'] as String,
      model: json['model'] as String,
      engineSize: json['engineSize'] as int,
      fuelType: json['fuelType'] as String?,
      mileage: json['mileage'] as int?,
      mileageUnit: json['mileageUnit'] as String?,
    );

Map<String, dynamic> _$$_VehicleToJson(_$_Vehicle instance) =>
    <String, dynamic>{
      'vin': instance.vin,
      'plateNumber': instance.plateNumber,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'engineSize': instance.engineSize,
      'fuelType': instance.fuelType,
      'mileage': instance.mileage,
      'mileageUnit': instance.mileageUnit,
    };
