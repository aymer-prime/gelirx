// import 'package:gelirx/app/injector/injection.dart';
// import 'package:gelirx/app/local_services/local_services.dart';
// import 'package:gelirx/app/network/api_exception.dart';
// import 'package:gelirx/app/network/remote_service.dart';
// import 'package:gelirx/features/feature/data/collections/feature_collection.dart';
// import 'package:gelirx/features/feature/data/dtos/feature_dto.dart';
// import 'package:gelirx/features/feature/data/i_feature_repository.dart';
// import 'package:gelirx/features/feature/domain/entities/feature.dart';
// import 'package:gelirx/features/shared/domain/failures/app_failure.dart';

// class FeatureRepository implements IFeatureRepository {
//   final featureRemoteService = i.get<RemoteService<FeatureDto>>();
//   final featureLocalService = i.get<LocalServices<FeatureCollection>>();

//   @override
//   Future<(AppFailure?, Iterable<Feature>?)> getAll() async {
//     try {
//       final result = await featureRemoteService.getList(
//         'features',
//         fromJson: FeatureDto.fromJson,
//       );
//       final features = result.map((e) => e.toDomain());
//       await featureLocalService.saveAll(
//         features.map((e) => FeatureCollection.fromDomain(e)).toList(),
//       );
//       return (null, features);
//     } on ApiException catch (e) {
//       return e.maybeWhen(
//         orElse: () {
//           return (AppFailure.remote(), null);
//         },
//         notModified: () async {
//           final collection = await featureLocalService.findAll();
//           final features = collection.map((e) => e.toDomain());
//           return (null, features);
//         },
//       );
//     } catch (e) {
//       return (AppFailure.local(), null);
//     }
//   }
// }
