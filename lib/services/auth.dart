import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:forza_go_securi/models/utilisateur.dart';
import 'package:forza_go_securi/services/database.dart';

/* Connection to Firebase database to create user account,
* save their hashed passwords and data */

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //user object based on firebase user
  Utilisateur? _userFromFirebaseUser(User? user) {
    return user != null ? Utilisateur(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<Utilisateur?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  // sign in with email & password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // register a new user with email & password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;

      // create a new document for the user with the uid
      await DatabaseService(uid: user!.uid)
          .updateUserData('0', 'New crew member');
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign out : calling the auth package to sign out user
  // TODO : fix the sign out error
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return null;
    }
  }
}
