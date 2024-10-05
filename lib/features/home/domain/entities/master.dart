import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
part 'master.freezed.dart';

// Master model
@freezed
abstract class Master with _$Master {
  const factory Master({
    required String id,
    // required String phone,
    // required String name,
    // required String surname,
    required double latitude,
    required double longitude,
    required String point,
    required List<Img> categories,
  }) = _Master;
}
