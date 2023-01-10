import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/models/job.dart';
import '/models/job_history.dart';
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
      await Future.delayed(const Duration(seconds: 1));

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

  Future<Job> fetchJob(String id) async {
    try {
      // final payload = {};
      // final response = await _dio.get("/login");
      await Future.delayed(const Duration(seconds: 1));

      const jsonString = '''{
        "id": 1,
        "date": "2023-01-09 00:00:00.000Z",
        "startTime": "10:00",
        "endTime": "11:00",
        "status": "pending",
        "plateNumber": "6510УНЧ"
      }''';
      final json = jsonDecode(jsonString) as Map<String, dynamic>;

      return Job.fromJson({...json, 'id': json['id'].toString()});
    } on DioError catch (error) {
      rethrow;
    } catch (error) {
      rethrow;
    }
  }

  Future<List<JobHistory>> fetchJobHistory(String id) async {
    try {
      // final payload = {};
      // final response = await _dio.get("/login");
      await Future.delayed(const Duration(seconds: 1));

      const jsonString = '''[
        {
          "id": 1,
          "date": "2023-01-09 00:00:00.000Z",
          "job": "Хөдөлгүүрийн тос солих",
          "memo": "Хөдөлгүүрийн тос сольсон",
          "organization": "Женуйне Партс ХХК",
          "service": "Манлай Сервис",
          "vehicle": {
            "manufacturer": "Toyota",
            "model": "Prius",
            "mileage": 100000,
            "mileageUnit": "km"
          }
        },
        {
          "id": 2,
          "date": "2023-01-10 00:00:00.000Z",
          "job": "Хөдөлгүүрийн тос солих",
          "memo": "Хөдөлгүүрийн тос сольсон",
          "organization": "Женуйне Партс ХХК",
          "service": "Манлай Сервис",
          "vehicle": {
            "manufacturer": "Volkswagen",
            "model": "Polo",
            "mileage": 100000,
            "mileageUnit": "km"
          }
        },
        {
          "id": 3,
          "date": "2023-01-09 00:00:00.000Z",
          "job": "Хөдөлгүүрийн тос солих",
          "memo": "Хөдөлгүүрийн тос сольсон",
          "organization": "Женуйне Партс ХХК",
          "service": "Манлай Сервис",
          "vehicle": {
            "manufacturer": "Toyota",
            "model": "Prius",
            "mileage": 100000,
            "mileageUnit": "km"
          }
        },
        {
          "id": 4,
          "date": "2023-01-10 00:00:00.000Z",
          "job": "Хөдөлгүүрийн тос солих",
          "memo": "Хөдөлгүүрийн тос сольсон",
          "organization": "Женуйне Партс ХХК",
          "service": "Манлай Сервис",
          "vehicle": {
            "manufacturer": "Volkswagen",
            "model": "Polo",
            "mileage": 100000,
            "mileageUnit": "km"
          }
        },
        {
          "id": 5,
          "date": "2023-01-09 00:00:00.000Z",
          "job": "Хөдөлгүүрийн тос солих",
          "memo": "Хөдөлгүүрийн тос сольсон",
          "organization": "Женуйне Партс ХХК",
          "service": "Манлай Сервис",
          "vehicle": {
            "manufacturer": "Toyota",
            "model": "Prius",
            "mileage": 100000,
            "mileageUnit": "km"
          }
        },
        {
          "id": 6,
          "date": "2023-01-10 00:00:00.000Z",
          "job": "Хөдөлгүүрийн тос солих",
          "memo": "Хөдөлгүүрийн тос сольсон",
          "organization": "Женуйне Партс ХХК",
          "service": "Манлай Сервис",
          "vehicle": {
            "manufacturer": "Volkswagen",
            "model": "Polo",
            "mileage": 100000,
            "mileageUnit": "km"
          }
        },
        {
          "id": 7,
          "date": "2023-01-09 00:00:00.000Z",
          "job": "Хөдөлгүүрийн тос солих",
          "memo": "Хөдөлгүүрийн тос сольсон",
          "organization": "Женуйне Партс ХХК",
          "service": "Манлай Сервис",
          "vehicle": {
            "manufacturer": "Toyota",
            "model": "Prius",
            "mileage": 100000,
            "mileageUnit": "km"
          }
        },
        {
          "id": 8,
          "date": "2023-01-10 00:00:00.000Z",
          "job": "Хөдөлгүүрийн тос солих",
          "memo": "Хөдөлгүүрийн тос сольсон",
          "organization": "Женуйне Партс ХХК",
          "service": "Манлай Сервис",
          "vehicle": {
            "manufacturer": "Volkswagen",
            "model": "Polo",
            "mileage": 100000,
            "mileageUnit": "km"
          }
        },
        {
          "id": 9,
          "date": "2023-01-09 00:00:00.000Z",
          "job": "Хөдөлгүүрийн тос солих",
          "memo": "Хөдөлгүүрийн тос сольсон",
          "organization": "Женуйне Партс ХХК",
          "service": "Манлай Сервис",
          "vehicle": {
            "manufacturer": "Toyota",
            "model": "Prius",
            "mileage": 100000,
            "mileageUnit": "km"
          }
        },
        {
          "id": 10,
          "date": "2023-01-10 00:00:00.000Z",
          "job": "Хөдөлгүүрийн тос солих",
          "memo": "Хөдөлгүүрийн тос сольсон",
          "organization": "Женуйне Партс ХХК",
          "service": "Манлай Сервис",
          "vehicle": {
            "manufacturer": "Volkswagen",
            "model": "Polo",
            "mileage": 100000,
            "mileageUnit": "km"
          }
        }
      ]''';
      final json = jsonDecode(jsonString) as List;

      return json
          .map((history) => JobHistory.fromJson(
                {
                  ...history,
                  'id': history['id'].toString(),
                },
              ))
          .toList();
    } on DioError catch (error) {
      rethrow;
    } catch (error) {
      rethrow;
    }
  }
}
