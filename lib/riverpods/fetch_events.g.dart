// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_events.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$fetchEventsHash() => r'c4228a52e1c838cefb7005e995fca47688baee8d';

/// See also [fetchEvents].
final fetchEventsProvider =
    AutoDisposeFutureProvider<LinkedHashMap<DateTime, List<Event>>>(
  fetchEvents,
  name: r'fetchEventsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchEventsHash,
);
typedef FetchEventsRef
    = AutoDisposeFutureProviderRef<LinkedHashMap<DateTime, List<Event>>>;
