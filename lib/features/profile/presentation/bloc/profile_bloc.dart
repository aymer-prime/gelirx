import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../app/network/api_exception.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../../../shared/domain/i_shared_repository.dart';
part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ISharedRepository _iSharedRepository;
  ProfileBloc(this._iSharedRepository) : super(const ProfileState.initial()) {
    on<_GetUserInfo>((event, emit) async {
      emit(const ProfileState.loading());
      final user = event.currentUser;
      if (user != null) {
        var resultList =
            await _iSharedRepository.getUserInfo(user.userId);
        resultList.fold(
              (apiException) => emit(ProfileState.loadFailed(apiException)),
              (userInfo) {

            emit(ProfileState.loadSuccess(userInfo));
          },
        );
      } else {
        emit(const ProfileState.loadFailed(ApiException.unauthorized()));
      }
    });
  }
}
