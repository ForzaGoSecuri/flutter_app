/*
Welcome on the Go Securi mobile application,
created by Mickaëlle Aubrée and Florian Giangrande, members of the team
Forza Go Securi, along with their loyal comrades Guillaume Lechevallier, and Nicolas Marette.
This first version of the Go Securi app allow the company to register new security
agents in their crew, see and update their agents data.

In this Main file, the connection to the Firebase Database is initialized,
and the user is can access the panel to register or login.

We hope that our application will help you monitoring your security crew,
and we commit, so to say, to develop and improve this app again in the future
in order to answer the needs our customers can face.
 */

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:forza_go_securi/screens/wrapper.dart';
import 'package:forza_go_securi/services/auth.dart';
import 'package:provider/provider.dart';
import 'models/utilisateur.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<Utilisateur?>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        title: 'Forza Go Securi',
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors
