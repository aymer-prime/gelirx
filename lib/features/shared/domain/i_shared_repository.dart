import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';

abstract class ISharedRepository {
  Future<Either<ApiException, Unit>> updateOrderStatus(
      String orderId, int status);
  Future<Either<ApiException, UserInfo>> getUserInfo(String userId);
}
