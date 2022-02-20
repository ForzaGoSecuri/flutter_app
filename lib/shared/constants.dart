import 'package:flutter/material.dart';
import 'package:forza_go_securi/home/OneUserPage.dart';

/*
styling constants to clear input text decorations
 */

Color colorContainer = Colors.teal;

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

dynamic buttonTableStyle = OutlinedButton.styleFrom(
  primary: Colors.white,
  backgroundColor: colorContainer,
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))),
);
