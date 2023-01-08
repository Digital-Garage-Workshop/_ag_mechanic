import 'package:dio/dio.dart';

final options = BaseOptions(baseUrl: "https://reqres.in/api");

class ApiService {
  final dio = Dio(options);
}
