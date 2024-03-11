import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_home_app/data/models/create_poll.dart';
import 'package:take_home_app/resource/strings_manager.dart';

import '../../../data/service/poll_firebase.dart';
import '../../../utils/validation.dart';

part 'create_poll_bloc.freezed.dart';
part 'create_poll_event.dart';
part 'create_poll_state.dart';

class CreatePollBloc extends Bloc<CreatePollEvent, CreatePollState> {
  FirestoreService firestoreService;

  String errorQuestion = '';
  String errorChoice = '';

  TextEditingController questionController = TextEditingController();
  TextEditingController choiceController = TextEditingController();

  void setErrorQuestion(String value) => errorQuestion = value;

  void setErrorChoice(String value) => errorChoice = value;

  final List<String> choices = [];

  CreatePollBloc({required this.firestoreService})
      : super(const CreatePollState.initial()) {
    on<SavePoll>(_savePoll);
    on<AddChoice>(_addChoices);
    on<EnterQue>(_enterQue);
  }

  int id = 1;

  _savePoll(SavePoll event, Emitter<CreatePollState> emit) {
    emit(const Initial());
    if (isEmptyField(value: questionController.text)) {
      setErrorQuestion(StringManager.pleaseEnterQuestion);
      emit(const Error());
    } else if (choices.isEmpty) {
      setErrorQuestion('');
      setErrorChoice(StringManager.pleaseAddAtLeastOption);
      emit(const Error());
    } else {
      emit(const Loading());
      setErrorQuestion('');
      setErrorChoice('');
      CreatePoll poll = CreatePoll(
          question: questionController.text,
          choices: choices,
          selectionCount: 0,
          createdDateTime: DateTime.now());
      firestoreService.savePoll(poll);
      questionController.clear();
      choiceController.clear();
      emit(const Submit());
    }
  }

  _addChoices(AddChoice event, Emitter<CreatePollState> emit) {
    emit(const Initial());
    if (isEmptyField(value: choiceController.text)) {
      setErrorQuestion('');
      setErrorChoice(StringManager.pleaseAddAtLeastOption);
      emit(const Error());
    } else {
      choices.add(choiceController.text);
      choiceController.clear();
      setErrorChoice('');
      emit(const ChoiceAdded());
    }
  }

  _enterQue(EnterQue event, Emitter<CreatePollState> emit) {
    emit(const Initial());
    if (isEmptyField(value: questionController.text)) {
      setErrorQuestion(StringManager.pleaseEnterQuestion);
      emit(const Error());
    } else {
      setErrorQuestion('');
      emit(const TextAdded());
    }
  }
}
