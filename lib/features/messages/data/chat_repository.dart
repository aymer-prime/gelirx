import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/features/auth/data/mappers/auth_mapers.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/v4.dart';
import '../../auth/data/dtos/auth_dtos.dart';
import '../../auth/domain/entities/user_entity.dart';
import '../domain/i_chat_repository.dart';

@LazySingleton(as: IChatRepository)
class ChatRepository implements IChatRepository {
  final FirebaseFirestore _firestore;
  final SharedPreferences _preferences;
  final RemoteService _remoteService;
  ChatRepository(this._preferences, this._firestore, this._remoteService);

  @override
  Stream<Either<ApiException, dynamic>> getChats() async* {
    try {
      final userId = _preferences.get(Constants.userIdKey);
      yield* _firestore
          .collection('booking')
          .where(Filter.or(Filter('master_id', isEqualTo: userId),
              Filter('user_id', isEqualTo: userId)))
          .where('status', isGreaterThan: 0)
          .snapshots()
          .map((snapshot) => right<ApiException, dynamic>(snapshot.docs.map(
                (doc) => doc,
              )));
    } catch (e) {
      yield Left(ApiException.defaultException("0", e.toString()));
    }
  }

  Future<Either<ApiException, void>> sendMessage(
      String bookingId, String message) async {
    final newMessage = {
      'sender_id': _preferences.get(Constants.userIdKey),
      'content': message,
      'date': Timestamp.now(),
      'message_id': UuidV4().generate()
    };
    try {
      await _firestore.collection('booking').doc(bookingId).update({
        'messages': FieldValue.arrayUnion([newMessage]),
      });
      return right(null);
    } catch (e) {
      return left(ApiException.defaultException("0", e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UserInfo>> fetchAdditionalInfo(String userId) async {
    try {
      var response = await _remoteService.post(
        '${Constants.baseUrl}user/master/info.php',
        options: Options(
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        ),
        data: {'lang': 'tr', 'user_id': userId},
      );

      final userInfo = UserInfoDto.fromJson(response).toDomain();
      return right(userInfo);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }
}









  // @override
  // Future<Either<ApiException, Stream<Position>>> getLocationStream() async {
  //   try {
  //     bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //     if (!serviceEnabled) {
  //       return const Left(ApiException.defaultException("0", "Location services are disabled."));
  //     }
  //
  //     LocationPermission permission = await Geolocator.checkPermission();
  //     if (permission == LocationPermission.denied) {
  //       permission = await Geolocator.requestPermission();
  //       if (permission == LocationPermission.denied) {
  //         return const Left(ApiException.defaultException("0", "Location permissions are denied."));
  //       }
  //     }
  //
  //     if (permission == LocationPermission.deniedForever) {
  //       return const Left(ApiException.defaultException("0", "Location permissions are permanently denied."));
  //     }
  //
  //     Stream<Position> positionStream = Geolocator.getPositionStream(
  //       locationSettings: const LocationSettings(
  //         accuracy: LocationAccuracy.high,
  //         distanceFilter: Constants.distanceFilter,
  //       ),
  //     );
  //
  //     return Right(positionStream);
  //   } catch (e) {
  //     return Left(ApiException.defaultException("0", e.toString()));
  //   }
  // }


