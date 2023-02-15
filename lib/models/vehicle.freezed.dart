// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Vehicle _$VehicleFromJson(Map<String, dynamic> json) {
  return _Vehicle.fromJson(json);
}

/// @nodoc
mixin _$Vehicle {
  String get vin => throw _privateConstructorUsedError;
  String get plateNumber => throw _privateConstructorUsedError;
  String get manufacturer => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  int get engineSize => throw _privateConstructorUsedError;
  String? get fuelType => throw _privateConstructorUsedError;
  int? get mileage => throw _privateConstructorUsedError;
  String? get mileageUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res, Vehicle>;
  @useResult
  $Res call(
      {String vin,
      String plateNumber,
      String manufacturer,
      String model,
      int engineSize,
      String? fuelType,
      int? mileage,
      String? mileageUnit});
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res, $Val extends Vehicle>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vin = null,
    Object? plateNumber = null,
    Object? manufacturer = null,
    Object? model = null,
    Object? engineSize = null,
    Object? fuelType = freezed,
    Object? mileage = freezed,
    Object? mileageUnit = freezed,
  }) {
    return _then(_value.copyWith(
      vin: null == vin
          ? _value.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      engineSize: null == engineSize
          ? _value.engineSize
          : engineSize // ignore: cast_nullable_to_non_nullable
              as int,
      fuelType: freezed == fuelType
          ? _value.fuelType
          : fuelType // ignore: cast_nullable_to_non_nullable
              as String?,
      mileage: freezed == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as int?,
      mileageUnit: freezed == mileageUnit
          ? _value.mileageUnit
          : mileageUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$$_VehicleCopyWith(
          _$_Vehicle value, $Res Function(_$_Vehicle) then) =
      __$$_VehicleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String vin,
      String plateNumber,
      String manufacturer,
      String model,
      int engineSize,
      String? fuelType,
      int? mileage,
      String? mileageUnit});
}

/// @nodoc
class __$$_VehicleCopyWithImpl<$Res>
    extends _$VehicleCopyWithImpl<$Res, _$_Vehicle>
    implements _$$_VehicleCopyWith<$Res> {
  __$$_VehicleCopyWithImpl(_$_Vehicle _value, $Res Function(_$_Vehicle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vin = null,
    Object? plateNumber = null,
    Object? manufacturer = null,
    Object? model = null,
    Object? engineSize = null,
    Object? fuelType = freezed,
    Object? mileage = freezed,
    Object? mileageUnit = freezed,
  }) {
    return _then(_$_Vehicle(
      vin: null == vin
          ? _value.vin
          : vin // ignore: cast_nullable_to_non_nullable
              as String,
      plateNumber: null == plateNumber
          ? _value.plateNumber
          : plateNumber // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      engineSize: null == engineSize
          ? _value.engineSize
          : engineSize // ignore: cast_nullable_to_non_nullable
              as int,
      fuelType: freezed == fuelType
          ? _value.fuelType
          : fuelType // ignore: cast_nullable_to_non_nullable
              as String?,
      mileage: freezed == mileage
          ? _value.mileage
          : mileage // ignore: cast_nullable_to_non_nullable
              as int?,
      mileageUnit: freezed == mileageUnit
          ? _value.mileageUnit
          : mileageUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vehicle implements _Vehicle {
  const _$_Vehicle(
      {required this.vin,
      required this.plateNumber,
      required this.manufacturer,
      required this.model,
      required this.engineSize,
      required this.fuelType,
      required this.mileage,
      required this.mileageUnit});

  factory _$_Vehicle.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleFromJson(json);

  @override
  final String vin;
  @override
  final String plateNumber;
  @override
  final String manufacturer;
  @override
  final String model;
  @override
  final int engineSize;
  @override
  final String? fuelType;
  @override
  final int? mileage;
  @override
  final String? mileageUnit;

  @override
  String toString() {
    return 'Vehicle(vin: $vin, plateNumber: $plateNumber, manufacturer: $manufacturer, model: $model, engineSize: $engineSize, fuelType: $fuelType, mileage: $mileage, mileageUnit: $mileageUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vehicle &&
            (identical(other.vin, vin) || other.vin == vin) &&
            (identical(other.plateNumber, plateNumber) ||
                other.plateNumber == plateNumber) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.engineSize, engineSize) ||
                other.engineSize == engineSize) &&
            (identical(other.fuelType, fuelType) ||
                other.fuelType == fuelType) &&
            (identical(other.mileage, mileage) || other.mileage == mileage) &&
            (identical(other.mileageUnit, mileageUnit) ||
                other.mileageUnit == mileageUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vin, plateNumber, manufacturer,
      model, engineSize, fuelType, mileage, mileageUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleCopyWith<_$_Vehicle> get copyWith =>
      __$$_VehicleCopyWithImpl<_$_Vehicle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleToJson(
      this,
    );
  }
}

abstract class _Vehicle implements Vehicle {
  const factory _Vehicle(
      {required final String vin,
      required final String plateNumber,
      required final String manufacturer,
      required final String model,
      required final int engineSize,
      required final String? fuelType,
      required final int? mileage,
      required final String? mileageUnit}) = _$_Vehicle;

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$_Vehicle.fromJson;

  @override
  String get vin;
  @override
  String get plateNumber;
  @override
  String get manufacturer;
  @override
  String get model;
  @override
  int get engineSize;
  @override
  String? get fuelType;
  @override
  int? get mileage;
  @override
  String? get mileageUnit;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleCopyWith<_$_Vehicle> get copyWith =>
      throw _privateConstructorUsedError;
}
