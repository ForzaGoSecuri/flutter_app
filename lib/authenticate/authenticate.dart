import 'package:flutter/material.dart';
import 'package:forza_go_securi/authenticate/register.dart';
import 'package:forza_go_securi/authenticate/sign_in.dart';

/* User can chose to sign in, if they already have an account,
* a new user will choose first the Register button.
* Authenticate determine if user need to register or sign in*/

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
