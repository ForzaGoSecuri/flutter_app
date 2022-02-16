// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:forza_go_securi/screens/wrapper.dart';
import 'package:forza_go_securi/services/auth.dart';
import 'package:http/http.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'models/utilisateur.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
