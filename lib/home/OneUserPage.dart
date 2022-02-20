// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:forza_go_securi/home/AllUserPage.dart';
import 'package:flutter/material.dart';
import 'package:forza_go_securi/shared/app_bar.dart';
import 'package:forza_go_securi/shared/constants.dart';

/*
Detailed view page of a user. The page show the name, id card, and list of
available tools a user can have
 */

var backColorNOK = Colors.red;
var backColorOK = Colors.teal;
dynamic lenDataUser;

const dGreen = Color(0xFF54D3C2);
dynamic numberOfObject;

class Material {
  int iD = 0;
  bool snapHook = false;
  bool rode = false;
  bool knife = false;
  bool baton = false;
  bool flashlight = false;
  bool tearGas = false;
  bool pepperSpray = false;
  bool keys = false;
  bool medicalKit = false;

  Map<String, dynamic> get materials {
    return {
      "iD": iD,
      "snapHook": snapHook,
      "rode": rode,
      "knife": knife,
      "baton": baton,
      "flashlight": flashlight,
      "tearGas": tearGas,
      "pepperSpray": pepperSpray,
      "keys": keys,
      "medicalKit": medicalKit,
    };
  }
}

class OneUserPage extends StatelessWidget {
  const OneUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'forza gosecuri',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: dGreen,
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // the container that show agent id card
              Container(
                decoration: containerDecoration,
                child: Image.asset('assets/id_berthier.png',
                    width: 600, height: 240, fit: BoxFit.cover),
                margin: theSpace,
                padding: theSpace,
              ),

              // the Container that show the table of all tools available
              Container(
                  decoration: containerDecoration,
                  margin: theSpace,
                  padding: theSpace,
                  child: createTable()),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllUserPage()),
                    );
                  },
                  child: Text('see all users')),
            ],
          ),
        ));
  }
}

// TODO : fix the setState
Widget createTable() {
  List<TableRow> rows = [];
  for (int i = 0; i < lenDataUser; ++i) {
    if (i == 0) {
      rows.add(TableRow(children: [
        OutlinedButton(
          child: Text('Material of one user'),
          style: buttonTableStyle,
          onPressed: null,
        ),
      ]));
    }
    if (i == 1) {
      rows.add(TableRow(children: [
        OutlinedButton(
          child: Text('snapHook'),
          style: buttonTableStyle,
          onPressed: () {
            /*setState(() {
              colorContainer = Colors.red;
            });*/
            print('snapHook');
          },
        ),
      ]));
    }
    if (i == 2) {
      rows.add(TableRow(children: [
        Container(
          child: OutlinedButton(
            child: Text('rope'),
            style: buttonTableStyle,
            onPressed: () {
              print('rope');
            },
          ),
        ),
      ]));
    }
    if (i == 3) {
      rows.add(TableRow(children: [
        Container(
          child: OutlinedButton(
            child: Text('knife'),
            style: buttonTableStyle,
            onPressed: () {
              print('knife');
            },
          ),
        ),
      ]));
    }
    if (i == 4) {
      rows.add(TableRow(children: [
        Container(
          child: OutlinedButton(
            child: Text('baton'),
            style: buttonTableStyle,
            onPressed: () {
              print('baton');
            },
          ),
        ),
      ]));
    }
    if (i == 5) {
      rows.add(TableRow(children: [
        Container(
          child: OutlinedButton(
            child: Text('flashlight'),
            style: buttonTableStyle,
            onPressed: () {
              print('flashlight');
            },
          ),
        ),
      ]));
    }
    if (i == 6) {
      rows.add(TableRow(children: [
        Container(
          child: OutlinedButton(
            child: Text('tearGas'),
            style: buttonTableStyle,
            onPressed: () {
              print('tearGas');
            },
          ),
        ),
      ]));
    }
    if (i == 7) {
      rows.add(TableRow(children: [
        Container(
          child: OutlinedButton(
            child: Text('pepperSpray'),
            style: buttonTableStyle,
            onPressed: () {
              print('pepperSpray');
            },
          ),
        ),
      ]));
    }
    if (i == 8) {
      rows.add(TableRow(children: [
        Container(
          child: OutlinedButton(
            child: Text('keys'),
            style: buttonTableStyle,
            onPressed: () {
              print('keys');
            },
          ),
        ),
      ]));
    }
    if (i == 9) {
      rows.add(TableRow(children: [
        Container(
          child: OutlinedButton(
            child: Text('Medical kit'),
            style: buttonTableStyle,
            onPressed: () {
              OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: backColorOK,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              );

              print('Medical kit');
            },
          ),
        ),
      ]));
    }
  }

  return Table(children: rows);
}
