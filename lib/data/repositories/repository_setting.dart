import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/failure_domain.dart';
import '../models/response/base_response.dart';

class RepositorySetting {
  Future<Either<FailureDomain, BaseResponse<T>>> handleResponse<T>(
      Future<BaseResponse<T>> service) async {
    BaseResponse<T> response;

    try {
      response = await service;
      if (kDebugMode) {
        print(response);
      }
      return right(response);
    } on DioError catch (error) {
      switch (error.type) {
        case DioErrorType.response:
          print("http get, error : $error");
          print("http get, error message : ${error.response}");
          response = BaseResponse<T>.errorHandler(error.response?.data);
          String message = response.message ?? "";
          switch (error.response?.statusCode) {
            case 404:
              return left(FailureDomain.notFound(message.isNotEmpty
                  ? message
                  : 'Halaman tidak ditemukan (404)'));
            case 500:
              return left(FailureDomain.serverFailure(message.isNotEmpty
                  ? message
                  : 'Terjadi masalah pada server (500)'));
            case 401:
              return left(FailureDomain.unauthorized(message.isNotEmpty
                  ? message
                  : 'Tidak memiliki otorisasi (401)'));
            default:
              return left(FailureDomain.unknown(
                  "${error.response?.statusCode} $message"));
          }

        case DioErrorType.connectTimeout:
          return left(const FailureDomain.unknown("Request time out"));

        case DioErrorType.receiveTimeout:
          return left(const FailureDomain.unknown("Receive time out"));

        case DioErrorType.sendTimeout:
          return left(const FailureDomain.unknown("Send time out"));

        case DioErrorType.cancel:
          return left(const FailureDomain.unknown("Request canceled"));

        case DioErrorType.other:
          return left(FailureDomain.unknown("Unknown Error: ${error.message}"));
      }
    } catch (error, stackTrace) {
      if (kDebugMode) {
        print(" calling service error unknown");
        print("error happened, $stackTrace");
      }
      return left(FailureDomain.unknown("Unknown Error: $error"));
    }
  }
}
