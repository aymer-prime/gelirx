import 'package:dartz/dartz.dart';
import '../../../app/network/api_exception.dart';

abstract class IChatRepository {
  Stream<Either<ApiException, dynamic>> getChats();
  Future<Either<ApiException, void>> sendMessage(
      String bookingId, String message);
}
