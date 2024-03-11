class CreatePoll {
  String question;
  List<String> choices;
  int selectionCount;
  DateTime createdDateTime;

  CreatePoll({
    required this.question,
    required this.choices,
    required this.selectionCount,
    required this.createdDateTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'question': question,
      'choices': choices,
      'selectionCount': selectionCount,
      'createdDateTime': createdDateTime.toIso8601String(),
    };
  }

  factory CreatePoll.fromMap(Map<String, dynamic> map) => CreatePoll(
        question: map['question'],
        choices: List<String>.from(map['choices']),
        selectionCount: map['selectionCount'],
        createdDateTime: DateTime.parse(map["createdDateTime"]),
      );
}
