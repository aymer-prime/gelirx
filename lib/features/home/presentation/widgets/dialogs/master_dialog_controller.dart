import 'package:flutter/foundation.dart' show immutable;
import 'package:gelirx/features/home/domain/entities/master.dart';

typedef CloseMasterDialog = bool Function();
typedef UpdateMasterDialog = bool Function(MasterDialogObject master);

@immutable
class MasterDialogController {
  final CloseMasterDialog close;
  final UpdateMasterDialog update;

  const MasterDialogController({
    required this.close,
    required this.update,
  });
}

@immutable
class MasterDialogObject {
  final Master master;
  final bool isFavorite;

  const MasterDialogObject({
    required this.master,
    required this.isFavorite,
  });
}
