import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final options = BaseOptions(baseUrl: "https://reqres.in/api");
final clientProvider = Provider<Dio>((_) {
  final dio = Dio(options);
  dio.interceptors.add(CustomInterceptors());

  return dio;
});

class CustomInterceptors extends Interceptor {
  @override
  onRequest(options, handler) async {
    try {
      const storage = FlutterSecureStorage();
      final accessToken = await storage.read(key: "accessToken");

      if (accessToken != null) {
        options.headers["Authorization"] = "Bearer $accessToken";
      }

      return handler.next(options);
    } catch (error) {
      rethrow;
    }
  }

  @override
  onResponse(response, handler) async {
    try {
      if (response.requestOptions.path == "/login" &&
          response.statusCode == 200) {
        final accessToken = response.data["accessToken"];

        const storage = FlutterSecureStorage();
        await storage.write(key: "accessToken", value: accessToken);
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
