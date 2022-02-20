// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:forza_go_securi/models/equipment.dart';
import 'package:forza_go_securi/home/OneUserPage.dart';

/*
The presentation card that introduce each user on the Home Page,
the card show the name of the agent, the number of tools they have,
and later a profile picture.
 */

class AgentTile extends StatelessWidget {
  final Equipment tool;
  AgentTile({required this.tool});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Card(
          margin: EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OneUserPage()),
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                radius: 25.0,
                backgroundColor: Colors.brown[200],
              ),
              title: Text(tool.name),
              subtitle: Text('Have ${tool.tools} tools'),
            ),
          ),
        ));
  }
}
