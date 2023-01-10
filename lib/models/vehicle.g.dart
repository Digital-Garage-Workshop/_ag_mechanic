// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vehicle _$$_VehicleFromJson(Map<String, dynamic> json) => _$_Vehicle(
      manufacturer: json['manufacturer'] as String,
      model: json['model'] as String,
      mileage: json['mileage'] as int,
      mileageUnit: json['mileageUnit'] as String,
    );

Map<String, dynamic> _$$_VehicleToJson(_$_Vehicle instance) =>
    <String, dynamic>{
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'mileage': instance.mileage,
      'mileageUnit': instance.mileageUnit,
    };
