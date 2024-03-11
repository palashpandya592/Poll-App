class GetPoll {
  String id;
  String question;
  List<String> choices;
  int selectionCount;
  String createdDateTime;

  GetPoll({
    required this.id,
    required this.question,
    required this.choices,
    required this.selectionCount,
    required this.createdDateTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'choices': choices,
      'selectionCount': selectionCount,
      'createdDateTime': createdDateTime,
    };
  }

  factory GetPoll.fromMap(Map<String, dynamic> map) => GetPoll(
        id: map['id'],
        question: map['question'],
        choices: List<String>.from(map['choices']),
        selectionCount: map['selectionCount'],
        createdDateTime: map["createdDateTime"],
      );
}
