import 'package:flutter/material.dart';
import 'package:forza_go_securi/home/OneUserPage.dart';

// Container color
Color colorContainer = Colors.teal;

//styling constants to clear input text decorations
const textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.pink, width: 2.0),
  ),
);

// style applied to Containers on the AllUsersPage
const containerDecoration = BoxDecoration(
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
);

//the style of buttons in the table of users
dynamic buttonTableStyle = OutlinedButton.styleFrom(
  primary: Colors.white,
  backgroundColor: colorContainer,
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))),
);

// adding some space and social distanciation around elements like Containers
const theSpace = EdgeInsets.fromLTRB(20, 25, 20, 10);
