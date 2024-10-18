import 'package:flutter/foundation.dart' show immutable;
import 'package:gelirx/features/home/domain/entities/master.dart';

typedef CloseMasterDialog = bool Function();
typedef UpdateMasterDialog = bool Function(Master master);

@immutable
class MasterDialogController {
  final CloseMasterDialog close;
  final UpdateMasterDialog update;

  const MasterDialogController({
    required this.close,
    required this.update,
  });
}
