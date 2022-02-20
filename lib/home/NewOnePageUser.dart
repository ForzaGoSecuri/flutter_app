import 'dart:ui';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'forza  go securi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Forza Go Securi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _hasBeenPressed = false;
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;
  bool _hasBeenPressed5 = false;
  bool _hasBeenPressed6 = false;
  bool _hasBeenPressed7 = false;
  bool _hasBeenPressed8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: new Text('Snap Hook'),
                    textColor: Colors.white,
                    // 2
                    color: _hasBeenPressed ? Colors.teal : Colors.red,
                    // 3

                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed = !_hasBeenPressed;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('rope'),
                    textColor: Colors.white,
                    // 2
                    color: _hasBeenPressed1 ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed1 = !_hasBeenPressed1;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('knife'),
                    textColor: Colors.white,
                    // 2
                    color: _hasBeenPressed2 ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed2 = !_hasBeenPressed2;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('baton'),
                    textColor: Colors.white,
                    // 2
                    color: _hasBeenPressed3 ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed3 = !_hasBeenPressed3;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('flashlight'),
                    textColor: Colors.white,
                    // 2
                    color: _hasBeenPressed4 ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed4 = !_hasBeenPressed4;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('tearGaz'),
                    textColor: Colors.white,
                    // 2
                    color: _hasBeenPressed5 ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed5 = !_hasBeenPressed5;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('pepperSpray'),
                    textColor: Colors.white,
                    // 2
                    color: _hasBeenPressed6 ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed6 = !_hasBeenPressed6;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('keys'),
                    textColor: Colors.white,
                    // 2
                    color: _hasBeenPressed7 ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed7 = !_hasBeenPressed7;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('medical Kit'),
                    textColor: Colors.white,
                    // 2
                    color: _hasBeenPressed8 ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed8 = !_hasBeenPressed8;
                      })
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
