import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/service/poll_firebase.dart';

part 'question_bloc.freezed.dart';
part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  FirestoreService firestoreService;
  int? _selectedChoice;

  int? get selectedChoice => _selectedChoice;

  QuestionBloc({required this.firestoreService})
      : super(const QuestionState.initial()) {
    on<SelectValue>(submitResponse);
  }

  void submitResponse(SelectValue event, Emitter<QuestionState> emit) {
    emit(const Initial());
    _selectedChoice = event.pollValue;

    firestoreService.updatePoll(pollId: event.pollId);
    emit(const SelectDone());
    /*if (event.pollValue.isNotEmpty) {

      // FirebaseFirestore.instance.collection('responses').doc(event.pollId).set({
      //   'selectedChoice': _selectedChoice,
      // });
    }*/
  }
}
