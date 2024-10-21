import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';

class ChatRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<QueryDocumentSnapshot>> getChats(String userId, int masterId) {
    // Stream to listen to documents where master_id matches
    Stream<QuerySnapshot> masterStream = _firestore.collection('booking')
        .where('master_id', isEqualTo: 39)
        .where('status', isGreaterThan: 0)
        .snapshots();

    // Stream to listen to documents where user_id matches
    Stream<QuerySnapshot> userStream = _firestore.collection('booking')
        .where('user_id', isEqualTo: 39)
        .where('status', isGreaterThan: 0)
        .snapshots();

    // Combine both streams into one using Rx.combineLatest2
    return Rx.combineLatest2(
      masterStream,
      userStream,
          (QuerySnapshot masterSnapshot, QuerySnapshot userSnapshot) {
        // Combine the documents from both streams
        List<QueryDocumentSnapshot> combinedDocs = [...masterSnapshot.docs, ...userSnapshot.docs];

        // Remove duplicate documents based on ID
        final uniqueDocs = combinedDocs.fold<List<QueryDocumentSnapshot>>([], (acc, doc) {
          if (!acc.any((d) => d.id == doc.id)) {
            acc.add(doc);
          }
          return acc;
        });
        return uniqueDocs;
      },
    );
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


