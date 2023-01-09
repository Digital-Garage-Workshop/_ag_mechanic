import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'client.provider.dart';

final authServiceProvider = Provider((ref) {
  final client = ref.watch(clientProvider);

  return AuthService(client);
});

class AuthService {
  final Dio _dio;

  AuthService(this._dio);

  Future<dynamic> login(String email, String password) async {
    try {
      final payload = {
        "email": email,
        "password": password,
      };
      final response = await _dio.post("/login", data: payload);

      return response.data;
    } on DioError catch (error) {
      print(error);
      rethrow;
    } catch (error) {
      rethrow;
    }
  }
}
