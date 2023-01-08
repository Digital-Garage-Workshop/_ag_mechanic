import 'dart:collection';

import 'package:dio/dio.dart';

import '/models/event.dart';

class EventService {
  final Dio _dio;

  EventService(this._dio);

  Future<LinkedHashMap<DateTime, List<Event>>> fetchEvents() async {
    try {
      final payload = {};
      final response = await _dio.get("/login");

      return response.data;
    } on DioError catch (error) {
      rethrow;
    } catch (error) {
      rethrow;
    }
  }
}
