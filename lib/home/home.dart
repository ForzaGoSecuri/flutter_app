// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:forza_go_securi/home/settings_form.dart';
import 'package:forza_go_securi/models/equipment.dart';
import 'package:forza_go_securi/services/auth.dart';
import 'package:forza_go_securi/services/database.dart';
import 'package:provider/provider.dart';
import 'package:forza_go_securi/home/equipment_list.dart';

/* Home sweet home, this is where user will see the other users presentation
cards, and could activate the settings panel, in order to update their data
*/

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    // Container widget that appear at the bottom of page to show user settings
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
        // Stream to show connected user data and allow them to update their equipment
        value: DatabaseService(uid: '').tools,
        initialData: [],
        child: Scaffold(
          backgroundColor: Colors.teal[50],
          appBar: AppBar(
            title: Text('Go Securi Home'),
            backgroundColor: Colors.teal,
            elevation: 0.0,
            actions: <Widget>[
              TextButton.icon(
                label: Text('Logout'),
                icon: Icon(Icons.person),
                onPressed: () async {
                  await _auth.signOut();
                },
              ),
              /* icon Settings open up the Container with settings form,
              allowing user to update their data (name, equipment)*/
              TextButton.icon(
                onPressed: () => _showSettingsPanel(),
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              )
            ],
          ),
          // body return all tools available with link to the equipment_list file
          body: ToolList(),
        ));
  }
}
