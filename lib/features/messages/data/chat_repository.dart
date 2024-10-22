import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../domain/i_chat_repository.dart';

@LazySingleton(as: IChatRepository)
class ChatRepository implements IChatRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<Either<ApiException, Stream<QuerySnapshot<Object?>>>> getChats() async {
    try {
      Stream<QuerySnapshot> combinedStream = _firestore.collection('booking')
          .where(Filter.or(
          Filter('master_id', isEqualTo: "39"),
          Filter('user_id', isEqualTo: "39")
      ))
          .where('status', isGreaterThan: 0)
          .snapshots();

      return right(combinedStream);
    } catch (e) {
      return Left(ApiException.defaultException("0", e.toString()));
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


