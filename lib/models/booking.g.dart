// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Booking _$$_BookingFromJson(Map<String, dynamic> json) => _$_Booking(
      id: json['id'] as String,
      isDiagnosed: json['isDiagnosed'] as bool,
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      vehicle: Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookingToJson(_$_Booking instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isDiagnosed': instance.isDiagnosed,
      'customer': instance.customer,
      'vehicle': instance.vehicle,
    };
