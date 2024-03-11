import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/routes/route_string.dart';
import '../../resource/strings_manager.dart';
import '../bloc/signin/sign_in_bloc.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignInBloc(),
      child: Scaffold(
        body: BlocConsumer<SignInBloc, SignInState>(
          builder: (context, state) {
            return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    state is SignInLoading
                        ? const Center(child: CircularProgressIndicator())
                        : SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                context
                                    .read<SignInBloc>()
                                    .add(const SignInEvent.signInAnonymously());
                              },
                              child: const Text(StringManager.signIN),
                            ),
                          ),
                  ],
                ));
          },
          listener: (BuildContext context, SignInState state) {
            if (state is SignInSuccess) {
              Navigator.of(context).pushNamed(AppRoutes.homeRoute);
            }
          },
        ),
      ),
    );
  }
}
