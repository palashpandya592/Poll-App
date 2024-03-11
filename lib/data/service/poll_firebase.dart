import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/create_poll.dart';
import '../models/get_poll.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> savePoll(CreatePoll poll) async {
    await FirebaseFirestore.instance.collection('polls').add(poll.toMap());
  }

  Stream<List<GetPoll>> getAllPolls() {
    return _firestore
        .collection('polls')
        .orderBy('createdDateTime', descending: true)
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return GetPoll(
          id: doc.id,
          question: doc['question'],
          choices: List<String>.from(doc['choices']),
          createdDateTime: doc['createdDateTime'],
          selectionCount: doc['selectionCount'],
        );
      }).toList();
    });
  }

  Future<void> updatePoll({required String pollId}) async {
    try {
      await FirebaseFirestore.instance.collection('polls').doc(pollId).update({
        'selectionCount': FieldValue.increment(1),
      });
    } catch (e) {
      print('Error updating poll: $e');
    }
  }
}
