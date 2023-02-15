import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'client.provider.dart';

final authServiceProvider = Provider((ref) {
  final client = ref.watch(clientProvider);

  return AuthService(client);
});

class AuthService {
  final Dio dio;

  AuthService(this.dio);

  Future<dynamic> login(String email, String password) async {
    try {
      final payload = {
        'username': email,
        'password': password,
      };

      final response = await dio.post('/auth/login', data: payload);

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
