import 'package:dartz/dartz.dart';

import '../../../app/network/api_exception.dart';
import '../../auth/domain/entities/user_entity.dart';

abstract class IChatRepository {
  Stream<Either<ApiException, dynamic>> getChats();
  Future<Either<ApiException, void>> sendMessage(
      String bookingId, String message);
  Future<Either<ApiException, UserInfo>>  fetchAdditionalInfo(String userId);
}
