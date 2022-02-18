import 'package:cour/OneUserPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const dGreen = Color(0xFF54D3C2);
var numberOfEmployees = 10;

class Employee {
  int iD = 0;
  String name = "";
  String surname = "";
  String nationality = "";
  String dateOfBirth = "";
  String gender = "";
  String localisation = "";

  Map<String, dynamic> get employees {
    return {
      "iD": iD,
      "name": name,
      "surname": surname,
      "nationality": nationality,
      "dateOfBirth": dateOfBirth,
      "gender": gender,
      "localisation": localisation,
    };
  }
}

class AllUserPage extends StatelessWidget {
  const AllUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'forza gosecuri',
      home: HomePageUsers(),
    );
  }
}

class HomePageUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: dGreen,
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 25, 10, 10),
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
                child: createTable(context),
              ),

              //  SearchSection(),
              // createTable()
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
        'List of security employees',
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
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
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

Widget createTable(context) {
  List<TableRow> rows = [];
  var employees = Employee();
  for (int i = 0; i < numberOfEmployees; ++i) {
    if (i == 0) {
      rows.add(const TableRow(children: [
        Text("name "),
        Text("surname "),
        Text("nationality"),
        Text("date of birth"),
        Text("gender"),
        Text("localisation"),
        Text("select user"),
      ]));
    }
    if (i >= 0) {
      rows.add(TableRow(children: [
        Text(employees.name),
        Text(employees.surname),
        Text(employees.nationality),
        Text(employees.dateOfBirth),
        Text(employees.gender),
        Text(employees.localisation),
        ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: Colors.teal,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OneUserPage()),
              );
            },
            child: Text(
              'select',
              style: TextStyle(color: Colors.black.withOpacity(1.0)),
            )),
      ]));
    }
  }
  return Table(children: rows);
}
