import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';
import 'package:gelirx/features/auth/domain/i_auth_repository.dart';
import 'package:injectable/injectable.dart';

part 'auth_status_event.dart';
part 'auth_status_state.dart';
part 'auth_status_bloc.freezed.dart';

@injectable
class AuthStatusBloc extends Bloc<AuthStatusEvent, AuthStatusState> {
  IAuthRepository _iAuthRepository;
  AuthStatusBloc(this._iAuthRepository) : super(const InitialState()) {
    on<AuthCheckRequested>((event, emit) async{
      final userOption = await _iAuthRepository.getUserInfo();
      userOption.fold(
        (failure) => emit(const AuthStatusState.unAuthenticated()),
        (user) => emit(AuthStatusState.authenticated(user)),
      );
    });
    on<SignedIn>((event, emit) async {
      emit(AuthStatusState.authenticated(event.user));
    });
    on<SignedOut>((event, emit) async {
      await _iAuthRepository.signOut();
      emit(const AuthStatusState.unAuthenticated());
    });
  }
}
