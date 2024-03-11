part of 'create_poll_bloc.dart';

@freezed
class CreatePollEvent with _$CreatePollEvent {
  const factory CreatePollEvent.savePoll() = SavePoll;

  const factory CreatePollEvent.addChoice() = AddChoice;

  const factory CreatePollEvent.enterQue() = EnterQue;
}
