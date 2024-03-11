import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_home_app/data/models/get_poll.dart';

import '../../data/service/poll_firebase.dart';
import '../../presentation/bloc/question/question_bloc.dart';
import '../../resource/colors_manager.dart';

class QuestionWidget extends StatefulWidget {
  final GetPoll poll;

  const QuestionWidget({Key? key, required this.poll}) : super(key: key);

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionBloc(firestoreService: FirestoreService()),
      child: BlocBuilder<QuestionBloc, QuestionState>(
        builder: (context, state) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.poll.question,
                          style: const TextStyle(
                              color: ColorManager.gradient,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text('Total ans: ${widget.poll.selectionCount}',
                          style: const TextStyle(
                              color: ColorManager.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Column(
                    children: widget.poll.choices.map<Widget>((choice) {
                      return RadioListTile<int>(
                        title: Text(choice),
                        value: widget.poll.choices.indexOf(choice),
                        groupValue: context.read<QuestionBloc>().selectedChoice,
                        onChanged: (value) {
                          context
                              .read<QuestionBloc>()
                              .add(SelectValue(widget.poll.id, value!));
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
