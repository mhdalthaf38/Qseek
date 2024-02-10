import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

FirebaseDatabase database = FirebaseDatabase.instance;

class FirestoreService {
  //get collection of upload

  final CollectionReference uploads =
      FirebaseFirestore.instance.collection('uploaddata');

//creat : add a new note
  Future<void> addData(String name, String jobtype, String salary, int number,
      String jobdiscription) {
    return uploads.add({
      'name': name,
      'jobtype': jobtype,
      'salary': salary,
      'number': number,
      'jobDiscription': jobdiscription,
      'timestamp': Timestamp.now()
    });
  }

  //read:get notes frome database
  Stream<QuerySnapshot> getDataStream() {
    final uploadStream =
        uploads.orderBy('timestamp', descending: true).snapshots();
    return uploadStream;
  }
}
