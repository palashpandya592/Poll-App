part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getPollData() = GetPollData;

  const factory HomeEvent.signOut() = SignOut;
}
