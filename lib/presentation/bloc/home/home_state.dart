part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;

  const factory HomeState.loaded() = Loaded;

  const factory HomeState.loading() = Loading;

  const factory HomeState.error() = Error;

  const factory HomeState.signOutSuccess() = SignOutSuccess;
}
