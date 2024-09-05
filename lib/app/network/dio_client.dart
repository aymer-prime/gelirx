import 'package:dio/dio.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:gelirx/app/utils/connectivity.dart';

@injectable
class DioClient {
  // Default http options for [Dio].
  BaseOptions httpOptions = BaseOptions(
    baseUrl: Constants.baseUrl,
    contentType: Headers.jsonContentType,
    followRedirects: false,
  );

  final Dio _dio;
  //final LocalService _etagService;

  DioClient(
    this._dio,
  ) {
    _dio.options = httpOptions;

    final prettyDioLogger = PrettyDioLogger(
      requestHeader: true,
      responseHeader: true,
      requestBody: true,
    );

    final interceptorWrapper = InterceptorsWrapper(
      onError: (e, handler) async => handler.next(e),
      onRequest: (options, handler) async {
        //_etagHeader(options);

        final isConnected = await ConnectivityUtils.isConnected;
        if (!isConnected) return;

        handler.next(options);
      },
      onResponse: (response, handler) {
        //_etagSave(response);
        handler.next(response);
      },
    );
    _dio.interceptors.addAll([
      prettyDioLogger,
      interceptorWrapper,
    ]);
  }

  Dio get dio => _dio;
}
