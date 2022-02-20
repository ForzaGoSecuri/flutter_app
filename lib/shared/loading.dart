// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/* A loading spinner widget to show user the data is charging in their
* settings update form*/

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[100],
      child: Center(
        child: SpinKitChasingDots(
          color: Colors.lightGreen,
          size: 50.0,
        ),
      ),
    );
  }
}
