import 'package:firebase_auth/firebase_auth.dart' as fbAuth;
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseUserMapper {
  UserEntity? toDomain(fbAuth.User? _) =>
      _ == null ? null : UserEntity(id: _.uid);
}
