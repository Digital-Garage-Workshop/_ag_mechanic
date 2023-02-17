import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final options = BaseOptions(
  baseUrl: 'https://api.garage.mn/v1',
  contentType: Headers.jsonContentType,
);
const accessTokenKey = 'accessToken';
final clientProvider = Provider((ref) {
  final dio = Dio(options);
  dio.interceptors.add(CustomInterceptors(ref));

  return dio;
});
final accessTokenProvider = StateProvider<String?>((ref) => null);

class CustomInterceptors extends Interceptor {
  final ProviderRef ref;

  CustomInterceptors(this.ref);

  @override
  onRequest(options, handler) async {
    try {
      const storage = FlutterSecureStorage();
      final accessToken = await storage.read(key: accessTokenKey);

      if (accessToken != null) {
        options.headers['Authorization'] = 'Bearer $accessToken';
      }

      return handler.next(options);
    } catch (error) {
      rethrow;
    }
  }

  @override
  onResponse(response, handler) async {
    try {
      if (response.requestOptions.path == '/auth/login' &&
          response.statusCode == 200) {
        final accessToken = response.data['token'];

        const storage = FlutterSecureStorage();
        await storage.write(key: accessTokenKey, value: accessToken);
        ref.read(accessTokenProvider.notifier).state = accessToken;
      }

      return handler.next(response);
    } catch (error) {
      rethrow;
    }
  }

  @override
  onError(error, handler) {
    return handler.next(error);
  }
}
