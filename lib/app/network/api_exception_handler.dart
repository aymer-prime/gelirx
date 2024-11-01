import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gelirx/app/network/api_exception.dart';

class ApiExceptionHandler {
  static ApiException handleException(DioException e) {
    final statusCode = e.response?.statusCode;
    switch (statusCode) {
      case HttpStatus.notModified:
        return const ApiException.notModified();
      case HttpStatus.unauthorized:
        return const ApiException.unauthorized();
      case HttpStatus.badRequest:
        //i.get<Logger>().severe(e);
        final data = e.response?.data as Map<String, dynamic>?;
        final errors = data?['errors'] as Map<String, dynamic>?;
        return ApiException.badRequest(errors ?? {});

      default:
        return ApiException.defaultException(
          e.response?.statusCode.toString() ?? "",
          '${e.response?.statusMessage ?? 'unknown'}, Error: ${e.error}',
        );
    }
  }
}
