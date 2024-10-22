import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/i_chat_repository.dart';

@LazySingleton(as: IChatRepository)
class ChatRepository implements IChatRepository {
  final FirebaseFirestore _firestore;
  final SharedPreferences _preferences;
  ChatRepository(this._preferences, this._firestore);

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


