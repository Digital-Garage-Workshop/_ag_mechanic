import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/models/diagnosis_check.dart';
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
      final response = await dio.get("/mechanic/joblist");
      final json = response.data as List;

      return json
          .map((job) => Job.fromJson({
                'id': job['id'].toString(),
                "date": job['booking_date'] + "T00:00:00.000Z",
                "startTime": job['booking_time'],
                "endTime": job['booking_endtime'],
                "status": job['rstatus'] == 'waiting'
                    ? 'pending'
                    : job['rstatus'] == 'finished'
                        ? 'done'
                        : 'ongoing',
                "plateNumber": job['carnumber']
              }))
          .toList();
    } on DioError catch (error) {
      print(error);
      rethrow;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  Future<Job> fetchJob(String id) async {
    try {
      final queryParameters = {
        "bookingid": id,
      };
      final response = await dio.get(
        "/mechanic/jobdetal",
        queryParameters: queryParameters,
      );
      final json = response.data as Map<String, dynamic>;

      return Job.fromJson({
        'id': json['id'].toString(),
        "date": json['booking_date'] + "T00:00:00.000Z",
        "startTime": json['rstart_time'],
        "endTime": json['rend_time'],
        "status": json['rstatus'] == 'waiting'
            ? 'pending'
            : json['rstatus'] == 'finished'
                ? 'done'
                : 'ongoing',
        "plateNumber": json['book']['carnumber']
      });
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

  Future<List<DiagnosisCheck>> fetchCheckList() async {
    try {
      final response = await dio.get("/mechanic/checklist");
      final json = response.data as List;

      return json
          .map((job) => DiagnosisCheck.fromJson({
                'id': job['id'].toString(),
                "name": job['name'],
                "slug": job['slug'],
              }))
          .toList();
    } on DioError catch (error) {
      rethrow;
    } catch (error) {
      rethrow;
    }
  }
}
