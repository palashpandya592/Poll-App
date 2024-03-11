import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/get_poll.dart';
import '../../data/routes/route_string.dart';
import '../../data/service/poll_firebase.dart';
import '../../resource/colors_manager.dart';
import '../../resource/strings_manager.dart';
import '../../utils/widget/question.dart';
import '../bloc/home/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          HomeBloc(firestoreService: FirestoreService())
            ..add(const GetPollData()),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.createPollRoute);
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: ColorManager.gradient,
          title: const Text(
            StringManager.pollCreateList,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {
                showAlertDialog(
                  context,
                );
                // context.read<HomeBloc>().add(const SignOut());
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.logout),
              ),
            )
          ],
        ),
        body: BlocConsumer<HomeBloc, HomeState>(
          builder: (context, state) {
            return StreamBuilder<List<GetPoll>?>(
              stream: context.read<HomeBloc>().polls,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting ||
                    snapshot.connectionState == ConnectionState.none) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else {
                  List<GetPoll>? polls = snapshot.data;
                  return polls!.isEmpty
                      ? const Center(
                          child: Text(
                            StringManager.pollNotCreated,
                            style: TextStyle(
                                color: ColorManager.red,
                                fontWeight: FontWeight.w600,
                                fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        )
                      : ListView.builder(
                          itemCount: polls.length,
                          itemBuilder: (context, index) {
                            return QuestionWidget(
                              poll: polls[index],
                            );
                          },
                        );
                }
              },
            );
          },
          listener: (BuildContext context, HomeState state) {
            if (state is SignOutSuccess) {
              Navigator.pop(context);
            }
          },
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return BlocProvider(
            create: (BuildContext context) =>
                HomeBloc(firestoreService: FirestoreService()),
            child: BlocConsumer<HomeBloc, HomeState>(
              listener: (context, state) {
                if (state is SignOutSuccess) {
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.signInRoute);

                  /// Navigate to login page on logout
                }
              },
              builder: (context, state) {
                return AlertDialog(
                  title: const Text(StringManager.alert),
                  content: const Text(StringManager.signOutMessage),
                  actions: <Widget>[
                    TextButton(
                      child: const Text(StringManager.no),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                      child: const Text(StringManager.yes),
                      onPressed: () {
                        Navigator.pop(context);
                        context.read<HomeBloc>().add(const SignOut());
                      },
                    ),
                  ],
                );
              },
            ),
          );
        });
  }
}
