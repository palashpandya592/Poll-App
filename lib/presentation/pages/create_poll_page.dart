import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/service/poll_firebase.dart';
import '../../resource/colors_manager.dart';
import '../../resource/strings_manager.dart';
import '../bloc/create_poll/create_poll_bloc.dart';
import '../common_component/common_editext_view.dart';

class CreatePollPage extends StatelessWidget {
  const CreatePollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          CreatePollBloc(firestoreService: FirestoreService()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.gradient,
          title: const Text(
            StringManager.createPoll,
            style: TextStyle(color: ColorManager.white),
          ),
          centerTitle: true,
        ),
        body: BlocConsumer<CreatePollBloc, CreatePollState>(
          listener: (context, state) {
            if (state is Submit) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextInputField(
                    controller:
                        context.read<CreatePollBloc>().questionController,
                    errorText: context.watch<CreatePollBloc>().errorQuestion,
                    hintText: StringManager.question,
                    onChanged: (val) {
                      context.read<CreatePollBloc>().add(const EnterQue());
                    },
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextInputField(
                          controller:
                              context.read<CreatePollBloc>().choiceController,
                          errorText: '',
                          hintText: StringManager.choice,
                          onChanged: (val) {},
                          textInputType: TextInputType.text,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorManager.gradient,
                              shape: const CircleBorder(),
                              alignment: Alignment.centerRight),
                          onPressed: () {
                            context
                                .read<CreatePollBloc>()
                                .add(const AddChoice());
                          },
                          child: const Icon(
                            Icons.add,
                            color: ColorManager.white,
                          )),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const Text(StringManager.choices,
                      style: TextStyle(
                          color: ColorManager.gradient,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(height: 5),
                  Column(
                    children: [
                      context.watch<CreatePollBloc>().choices.isNotEmpty
                          ? Text(
                              context
                                  .watch<CreatePollBloc>()
                                  .choices
                                  .join(', '),
                              style: const TextStyle(
                                  color: ColorManager.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500))
                          : Text(
                              context.watch<CreatePollBloc>().errorChoice,
                              style: const TextStyle(color: Colors.red),
                            ),
                    ],
                  ),
                  const SizedBox(height: 50.0),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorManager.gradient,
                          alignment: Alignment.centerRight),
                      onPressed: () =>
                          context.read<CreatePollBloc>().add(const SavePoll()),
                      child: const Text(StringManager.savePoll,
                          style: TextStyle(
                              color: ColorManager.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
