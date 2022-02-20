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
