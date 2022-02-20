import 'package:flutter/material.dart';
import 'package:forza_go_securi/authenticate/authenticate.dart';
import 'package:forza_go_securi/home/home.dart';
import 'package:forza_go_securi/models/utilisateur.dart';
import 'package:provider/provider.dart';

/* Wrapper redirect user either to Authenticate page, if they are not
logged in, or to Home page if they are already connected */

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Utilisateur?>(context);

    // return either Home or Authenticate Widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
