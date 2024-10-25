// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_entities.freezed.dart';

@freezed
class Favorite with _$Favorite {
  const factory Favorite({
    required String id,
    required String name,
    required String surname,
    required int totalComment,
    required int point,
    required int totalInteraction,
    required String image,
    required List<FavoriteServiceInfo> services,
  }) = _Favorite;
}

@freezed
class FavoriteServiceInfo with _$FavoriteServiceInfo {
  const factory FavoriteServiceInfo({
    required String id,
    required String name,
  }) = _FavoriteServiceInfo;
}
