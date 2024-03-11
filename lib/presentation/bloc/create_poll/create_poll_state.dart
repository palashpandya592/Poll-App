part of 'create_poll_bloc.dart';

@freezed
class CreatePollState with _$CreatePollState {
  const factory CreatePollState.initial() = Initial;

  const factory CreatePollState.submit() = Submit;

  const factory CreatePollState.loading() = Loading;

  const factory CreatePollState.error() = Error;

  const factory CreatePollState.choiceAdded() = ChoiceAdded;

  const factory CreatePollState.textAdded() = TextAdded;
}
