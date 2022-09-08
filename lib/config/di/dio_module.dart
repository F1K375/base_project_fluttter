import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../LoggingInterceptor.dart';
import 'module_util.dart';

@module
abstract class DioModule {
  Dio get dio {
    final options = BaseOptions(
        headers: {"Accept": "application/json"},
        connectTimeout: 15000,
        receiveTimeout: 15000,
        responseType: ResponseType.json);
    final dio = Dio(options);

    // dio.interceptors
    //     .add(InterceptorsWrapper(onRequest: (option, handler) async {
    //   final accountPreference = getIt<AccountSharedPreferences>();
    //   option.headers["Authorization"] =
    //       "Bearer ${await accountPreference.getToken()}";
    //   return handler.next(option);
    // }));

    if (kDebugMode) {
      dio.interceptors.add(LoggingInterceptor());
    }

    return dio;
  }
}
