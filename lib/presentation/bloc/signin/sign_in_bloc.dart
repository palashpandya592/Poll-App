import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../main.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      if (event is SignInAnonymously) {
        try {
          emit(const SignInLoading());
          await FirebaseAuth.instance.signInAnonymously();
          await prefs!.setBool('isLogin', true);
          emit(const SignInSuccess());
        } catch (e) {
          emit(const SignInError('Something went wrong'));
        }
      }
    });
  }
}
