import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/models/job.dart';
import 'client.provider.dart';

final jobServiceProvider = Provider((ref) {
  final client = ref.watch(clientProvider);

  return JobService(client);
});

class JobService {
  final Dio dio;

  JobService(this.dio);

  Future<List<Job>> fetchJobs() async {
    try {
      // final payload = {};
      // final response = await _dio.get("/login");
      const jsonString = '''[
        {
          "id": 1,
          "date": "2023-01-09 00:00:00.000Z",
          "startTime": "10:00",
          "endTime": "11:00",
          "status": "pending",
          "plateNumber": "1234ABC"
        },
        {
          "id": 2,
          "date": "2023-01-09 00:00:00.000Z",
          "startTime": "10:00",
          "endTime": "11:00",
          "status": "ongoing",
          "plateNumber": "2345ABC"
        },
        {
          "id": 3,
          "date": "2023-01-09 00:00:00.000Z",
          "startTime": "10:00",
          "endTime": "11:00",
          "status": "done",
          "plateNumber": "3456ABC"
        },
        {
          "id": 4,
          "date": "2023-01-10 00:00:00.000Z",
          "startTime": "10:00",
          "endTime": "11:00",
          "status": "done",
          "plateNumber": "4567ABC"
        }
      ]''';
      final json = jsonDecode(jsonString) as List;

      return json
          .map((job) => Job.fromJson({...job, 'id': job['id'].toString()}))
          .toList();
    } on DioError catch (error) {
      rethrow;
    } catch (error) {
      rethrow;
    }
  }
}
