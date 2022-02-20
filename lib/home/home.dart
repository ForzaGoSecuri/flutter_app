// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:forza_go_securi/home/settings_form.dart';
import 'package:forza_go_securi/models/equipment.dart';
import 'package:forza_go_securi/services/auth.dart';
import 'package:forza_go_securi/services/database.dart';
import 'package:provider/provider.dart';
import 'package:forza_go_securi/home/equipment_list.dart';
import 'package:forza_go_securi/home/AllUserPage.dart';
import 'package:forza_go_securi/home/OneUserPage.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: SettingsForm(),
            );
          });
    }

    return StreamProvider<List<Equipment>>.value(
        value: DatabaseService(uid: '').brews,
        initialData: [],
        child: Scaffold(
          backgroundColor: Colors.brown[50],
          appBar: AppBar(
            title: Text('Go Securi Home'),
            backgroundColor: Colors.brown[400],
            elevation: 0.0,
            actions: <Widget>[
              TextButton.icon(
                label: Text('Logout'),
                icon: Icon(Icons.person),
                onPressed: () async {
                  await _auth.signOut();
                },
              ),
              TextButton.icon(
                onPressed: () => _showSettingsPanel(),
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              )
            ],
          ),
          body: ToolList(),
        ));
  }
}
