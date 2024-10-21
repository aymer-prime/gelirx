import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
    required String description,
    required String link,
    required Img img,
  }) = _Category;
}

@freezed
abstract class Img with _$Img {
  const factory Img({
    required String icon,
    required String photo,
    @Default(false) bool isIconLocal,
  }) = _Img;
}
