// ignore_for_file: prefer_const_constructors

import 'package:forza_go_securi/home/OneUserPage.dart';
import 'package:flutter/material.dart';
import 'package:forza_go_securi/shared/app_bar.dart';

/* Page that show all users registered and their detailed data */

const dGreen = Color(0xFF54D3C2);
dynamic numberOfEmployees;

class Employee {
  int iD = 0;
  String name = "";
  String surname = "";
  String nationality = "";
  String gender = "";

  Map<String, dynamic> get employees {
    return {
      "iD": iD,
      "name": name,
      "surname": surname,
      "nationality": nationality,
      "gender": gender,
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
  const HomePageUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: dGreen,
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 25, 10, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                padding: EdgeInsets.all(5.0),
                child: createTable(context),
              ),
            ],
          ),
        ));
  }
}

// Table with each registered user and their data
// TODO : add method to get user data from database to fill the table
Widget createTable(context) {
  List<TableRow> rows = [];
  var employees = Employee();
  for (int i = 0; i < numberOfEmployees; ++i) {
    if (i == 0) {
      rows.add(const TableRow(children: [
        Text("name "),
        Text("surname "),
        Text("nationality"),
        Text("gender"),
        Text("select user"),
      ]));
    }
    if (i >= 0) {
      rows.add(TableRow(children: [
        Text(employees.name),
        Text(employees.surname),
        Text(employees.nationality),
        Text(employees.gender),
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
