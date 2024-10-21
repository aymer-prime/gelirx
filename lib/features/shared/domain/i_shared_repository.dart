import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';

abstract class ISharedRepository {
  Future<Either<ApiException, Unit>> updateOrderStatus(
      String orderId, int status);
}
