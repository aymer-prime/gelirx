part of 'navigation_bloc.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.initial() = _Initial;
  const factory NavigationState.loading() = _Loading;
  const factory NavigationState.success(Stream<Position> positionStream) = _Success;
  const factory NavigationState.routeSuccess(RouteInfo routeInfo) = _RouteSuccess;
  const factory NavigationState.error(String message) = _Error;
}
