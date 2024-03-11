part of 'question_bloc.dart';

@freezed
class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.selectValue(String pollId, int pollValue) =
      SelectValue;
}
