import 'package:dio/dio.dart';

class AuthService {
  final Dio _dio;

  AuthService(this._dio);

  Future<dynamic> login(String email, String password) async {
    try {
      final payload = {};
      final response = await _dio.post("/login", data: payload);

      return response.data;
    } on DioError catch (error) {
      rethrow;
    } catch (error) {
      rethrow;
    }
  }
}
