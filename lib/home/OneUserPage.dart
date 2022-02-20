// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:forza_go_securi/home/AllUserPage.dart';
import 'package:flutter/material.dart';
import 'package:forza_go_securi/shared/app_bar.dart';

/*
Detailed view page of a user. The page show the name, id card, and list of
available tools a user can have
 */

var backColorNOK = Colors.red;
var backColorOK = Colors.teal;
dynamic lenDataUser;

const dGreen = Color(0xFF54D3C2);
const numberOfObject = 10;

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
                child: Image.asset('assets/id_berthier.png',
                    width: 600, height: 240, fit: BoxFit.cover),
                margin: const EdgeInsets.fromLTRB(20, 25, 20, 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: dGreen,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              ),

              // the Container that show the table of all tools available
              Container(
                  margin: const EdgeInsets.fromLTRB(20, 25, 20, 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: dGreen,
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      )
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
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

Widget createTable() {
  Color _colorContainer = Colors.teal;
  List<TableRow> rows = [];
  for (int i = 0; i < lenDataUser; ++i) {
    if (i == 0) {
      rows.add(TableRow(children: [
        OutlinedButton(
          child: Text('Material of one user'),
          style: OutlinedButton.styleFrom(
            primary: Colors.teal,
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          onPressed: null,
        ),
      ]));
    }
    if (i == 1) {
      rows.add(TableRow(children: [
        OutlinedButton(
          child: Text('snapHook'),
          style: OutlinedButton.styleFrom(
            primary: Colors.white,
            backgroundColor: _colorContainer,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          onPressed: () {
            /*setState(() {
              _colorContainer = Colors.red;
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
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: _colorContainer,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
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
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
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
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
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
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
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
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
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
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
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
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
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
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: backColorNOK,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
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
