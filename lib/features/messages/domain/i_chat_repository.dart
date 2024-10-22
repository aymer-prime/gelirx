
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../../app/network/api_exception.dart';

abstract class IChatRepository {
  Stream<Either<ApiException, dynamic>> getChats();
}
