import 'package:cour/AllUserPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var backColorNOK = Colors.red;
var backColorOK = Colors.teal;
var lenDataUser = 10;

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
      home: HomePageUser(),
    );
  }
}

class HomePageUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: dGreen,
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'samanta',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'images/chambre.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                height: 140,

              ),
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
                child: createTable(),
              ),
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

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Information about one user',
        style: GoogleFonts.nunito(
          color: Colors.lightBlueAccent,
          fontSize: 22,
        ),
      ),
      actions: const [
        IconButton(
          icon: Icon(
            Icons.add_call,
            color: Colors.amber,
            size: 20,
          ),
          onPressed: null,
        )
      ],
      centerTitle: false,
      backgroundColor: Colors.white,
    );
  }
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1500,
      color: dGreen,
      padding: const EdgeInsets.fromLTRB(4, 25, 4, 10),
      child: Column(
        children: [
          Container(
            height: 100,
            color: Colors.black,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

Widget createTable() {
  List<TableRow> rows = [];
  for (int i = 0; i < lenDataUser; ++i) {
    if (i == 0) {
      rows.add(TableRow(children: [
        Container(
          child: OutlinedButton(
            child: Text('Material of one user'),
            style: OutlinedButton.styleFrom(
              primary: Colors.teal,
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            onPressed: null,
          ),
        ),
      ]));
    }
    if (i == 1) {
      rows.add(TableRow(children: [
        Container(
          child: OutlinedButton(
            child: Text('snapHook'),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            onPressed: () {
              print('snapHook');
            },
          ),
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
              backgroundColor: Colors.teal,
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
