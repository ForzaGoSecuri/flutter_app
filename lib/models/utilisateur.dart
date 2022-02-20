/*class for user instances, called in french 'Utilisateur' to avoid confusion with
the latest flutter version, in whitch FirebaseUser has been replaced by the
confusing keyword 'User'
*/
class Utilisateur {
  final String? uid;

  Utilisateur({this.uid});
}

class UserData {
  final String uid;
  final String name;
  final String usertools;

  UserData({required this.uid, required this.usertools, required this.name});
}
