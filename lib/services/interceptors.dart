import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CustomInterceptors extends Interceptor {
  final Dio _dio;

  CustomInterceptors(this._dio);

  @override
  void onRequest(options, handler) async {
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
  void onResponse(response, handler) async {
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
  void onError(error, handler) {
    return handler.next(error);
  }
}
