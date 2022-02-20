import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:forza_go_securi/models/equipment.dart';
import 'package:forza_go_securi/models/utilisateur.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});
  // collection reference
  final CollectionReference toolCollection =
      FirebaseFirestore.instance.collection('tools');

  Future updateUserData(String userTools, String name) async {
    return await toolCollection
        .doc(uid)
        .set({'tools': userTools, 'name': name});
  }

  // brew list from snapshot
  List<Equipment> _toolListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Equipment(
          name: doc.get('name') ?? '', tools: doc.get('tools') ?? '0');
    }).toList();
  }

  // user data from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
        uid: uid ?? '',
        name: snapshot.get('name') ?? '',
        usertools: snapshot.get('tools') ?? '0');
  }

  // get brews stream
  Stream<List<Equipment>> get tools {
    return toolCollection.snapshots().map(_toolListFromSnapshot);
  }

  // get user doc stream
  Stream<UserData> get userData {
    return toolCollection.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
}
