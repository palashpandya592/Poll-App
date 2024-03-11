part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = Initial;

  const factory QuestionState.selectDone() = SelectDone;
}
