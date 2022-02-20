import 'package:flutter/material.dart';
import 'package:forza_go_securi/home/home.dart';

/*
The Appbar class, that contain home link
 */

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('Go Securi Home'),
        backgroundColor: Colors.teal,
        elevation: 0.0,
        actions: <Widget>[
          TextButton.icon(
            label: Text('Home'),
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          )
        ]);
  }
}
