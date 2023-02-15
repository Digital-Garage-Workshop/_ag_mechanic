import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/models/diagnosis_check.dart';
import '/models/diagnosis_check_result.dart';
import '/models/job.dart';
import '/models/job_history.dart';
import 'client.provider.dart';

final jobServiceProvider = Provider((ref) {
  final client = ref.watch(clientProvider);

  return JobService(client);
});

String _isoDate(String date, String time) {
  final regex = RegExp(r'^([0-9]+):([0-9]+)\s(.*)$');

  final match = regex.firstMatch(time);
  late String isoDate;
  if (match != null && match.groupCount == 3) {
    final hour = int.parse(match.group(1)!) + (match.group(3) == 'AM' ? 0 : 12);
    final minute = match.group(2);
    isoDate = '${date}T${hour.toString().padLeft(2, '0')}:$minute:00.000Z';
  }

  return isoDate;
}

class JobService {
  final Dio dio;

  JobService(this.dio);

  Future<List<Job>> fetchJobs() async {
    try {
      final response = await dio.get('/mechanic/joblist');
      final json = response.data as List;

      return json
          .map((job) => Job.fromJson({
                'id': job['id'].toString(),
                'status': job['rstatus'],
                'type': '',
                'bookedStart':
                    _isoDate(job['booking_date'], job['booking_time']),
                'bookedEnd':
                    _isoDate(job['booking_date'], job['booking_endtime']),
                'memo': '',
                'booking': {
                  'id': '',
                  'isDiagnosed': false,
                  'customer': {
                    'id': '',
                    'email': '',
                    'name': '',
                    'phone': '',
                  },
                  'vehicle': {
                    'vin': '',
                    'plateNumber': job['carnumber'],
                    'manufacturer': '',
                    'model': '',
                    'engineSize': 0,
                    'fuelType': '',
                    'mileage': 0,
                    'mileageUnit': '',
                  },
                }
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
      final response = await dio.get(
        '/mechanic/jobdetail/$id',
      );
      final json = response.data as Map<String, dynamic>;

      return Job.fromJson({
        'id': json['id'].toString(),
        'status': json['rstatus'],
        'type': json['servicename'],
        'bookedStart': _isoDate(json['booking_date'], json['booking_time']),
        'bookedEnd': _isoDate(json['booking_date'], json['booking_endtime']),
        'start': json['rstart_time'],
        'end': json['rend_time'],
        'memo': json['repair_note'],
        'booking': {
          'id': json['book']['id'].toString(),
          'isDiagnosed': json['book']['generalexam'],
          'customer': {
            'id': json['book']['customer']['id'].toString(),
            'email': json['book']['customer']['email'],
            'name': json['book']['customer']['name'],
            'phone': json['book']['customer']['phone'].toString(),
          },
          'vehicle': {
            'vin': json['book']['car']['vin_number'],
            'plateNumber': json['book']['car']['carnumber'],
            'manufacturer': json['book']['car']['carmanu'],
            'model': json['book']['car']['carmodel'],
            'engineSize': json['book']['car']['engine'],
            'fuelType': json['book']['car']['fueltype'],
            'mileage': json['book']['car']['kilometr'],
            'mileageUnit': json['book']['car']['kilometrtype'],
          },
        }
      });
    } on DioError catch (error) {
      rethrow;
    } catch (error) {
      rethrow;
    }
  }

  Future<List<JobHistory>> fetchJobHistory(String vin) async {
    try {
      final queryParameters = {
        'vin_number': vin,
      };
      final response = await dio.get(
        '/mechanic/repairhistory',
        queryParameters: queryParameters,
      );
      final json = response.data as List;

      return json
          .map((history) => JobHistory.fromJson({
                'id': history['id'].toString(),
                'date': history['repair_date'] + 'T00:00:00.000Z',
                'job':
                    '${history['servicename'] ?? ''} - ${history['repairname'] ?? ''}',
                'memo': history['repairnote'],
                'organization': history['organization'],
                'service': history['branch'],
                'branch': '',
                'vehicle': {
                  'vin': history['vin_number'],
                  'plateNumber': history['carnumber'] ?? '',
                  'manufacturer': history['carmanu'],
                  'model': history['carmodel'],
                  'engineSize': 0,
                  'fuelType': '',
                  // 'mileage': history['kilometr'],
                  // 'mileageUnit': history['kilotype'],
                }
              }))
          .toList();
    } on DioError catch (error) {
      rethrow;
    } catch (error) {
      rethrow;
    }
  }

  Future<List<DiagnosisCheck>> fetchCheckList() async {
    try {
      final response = await dio.get('/mechanic/checklist');
      final json = response.data as List;

      return json
          .map((job) => DiagnosisCheck.fromJson({
                'id': job['id'].toString(),
                'name': job['name'],
                'slug': job['slug'],
              }))
          .toList();
    } on DioError catch (error) {
      rethrow;
    } catch (error) {
      rethrow;
    }
  }

  Future<List<DiagnosisCheckResult>> fetchCheckResult(String id) async {
    try {
      final queryParameters = {
        'bookid': id,
      };
      final response = await dio.get(
        '/mechanic/checkresult',
        queryParameters: queryParameters,
      );
      final json = response.data as List;

      return json
          .map((job) => DiagnosisCheckResult.fromJson({
                'id': job['id'].toString(),
                'value': job['isnormal'],
              }))
          .toList();
    } on DioError catch (error) {
      rethrow;
    } catch (error) {
      rethrow;
    }
  }

  Future<dynamic> submitCheckResult(
    String jid,
    Map<String, CheckResultValue?> result,
  ) async {
    try {
      final payload = {
        'result': result.entries
            .map((entry) => {
                  'id': entry.key,
                  'value': entry.value?.value,
                })
            .toList(),
      };

      final response = await dio.post(
        '/mechanic/checkresult/$jid',
        data: payload,
      );

      return response.data;
    } on DioError catch (error) {
      print(error);
      rethrow;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  Future<dynamic> startJob(
    String id,
  ) async {
    try {
      final response = await dio.post('/mechanic/jobstart/$id');

      return response.data;
    } on DioError catch (error) {
      print(error);
      rethrow;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  Future<dynamic> finishJob(
    String id,
  ) async {
    try {
      final response = await dio.post('/mechanic/jobend/$id');

      return response.data;
    } on DioError catch (error) {
      print(error);
      rethrow;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  Future<dynamic> submitMileage({
    required String jid,
    required int mileage,
    required MileageUnit unit,
  }) async {
    try {
      final payload = {
        'jobid': jid,
        'kilometr': mileage,
        'kilotype': unit.value,
      };
      final response = await dio.post('/mechanic/kilometr/save', data: payload);

      return response.data;
    } on DioError catch (error) {
      print(error);
      rethrow;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  Future<dynamic> submitNote({
    required String jid,
    String? memo,
    String? note,
  }) async {
    try {
      final payload = {
        'jobid': jid,
        'rnote': memo,
        'needpart': note,
      };
      final response = await dio.post('/mechanic/jobnote/save', data: payload);

      return response.data;
    } on DioError catch (error) {
      print(error);
      rethrow;
    } catch (error) {
      print(error);
      rethrow;
    }
  }
}

enum MileageUnit {
  kilometre('km'),
  mile('mile');

  const MileageUnit(this.value);
  final String value;
}
