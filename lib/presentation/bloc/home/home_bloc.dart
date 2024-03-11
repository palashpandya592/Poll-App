import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_home_app/main.dart';

import '../../../data/models/get_poll.dart';
import '../../../data/service/poll_firebase.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  FirestoreService firestoreService;
  Stream<List<GetPoll>>? polls;

  HomeBloc({required this.firestoreService})
      : super(const HomeState.initial()) {
    on<GetPollData>(_getPollData);
    on<SignOut>(_signOut);
  }

  _getPollData(GetPollData event, Emitter<HomeState> emit) async {
    emit(const Loading());
    polls = firestoreService.getAllPolls();
    emit(const Loaded());
  }

  _signOut(SignOut event, Emitter<HomeState> emit) async {
    emit(const Initial());
    await FirebaseAuth.instance.signOut();
    prefs!.setBool('isLogin', false);
    emit(const SignOutSuccess());
  }
}
