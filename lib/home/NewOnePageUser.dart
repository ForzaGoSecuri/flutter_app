import 'package:flutter/material.dart';

class NewOneUserPage extends StatelessWidget {
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
  bool _snaphookHasBeenPressed = false;
  bool _ropeHasBeenPressed = false;
  bool _knifeHasBeenPressed = false;
  bool _batonHasBeenPressed = false;
  bool _flashlightHasBeenPressed = false;
  bool _teargazHasBeenPressed = false;
  bool _peppersprayHasBeenPressed = false;
  bool _keysHasBeenPressed = false;
  bool _medicalkitHasBeenPressed = false;

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
                    color: _snaphookHasBeenPressed ? Colors.teal : Colors.red,
                    // 3

                    onPressed: () => {
                      setState(() {
                        _snaphookHasBeenPressed = !_snaphookHasBeenPressed;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('rope'),
                    textColor: Colors.white,
                    // 2
                    color: _ropeHasBeenPressed ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _ropeHasBeenPressed = !_ropeHasBeenPressed;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('knife'),
                    textColor: Colors.white,
                    // 2
                    color: _knifeHasBeenPressed ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _knifeHasBeenPressed = !_knifeHasBeenPressed;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('baton'),
                    textColor: Colors.white,
                    // 2
                    color: _batonHasBeenPressed ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _batonHasBeenPressed = !_batonHasBeenPressed;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('flashlight'),
                    textColor: Colors.white,
                    // 2
                    color: _flashlightHasBeenPressed ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _flashlightHasBeenPressed = !_flashlightHasBeenPressed;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('tearGaz'),
                    textColor: Colors.white,
                    // 2
                    color: _teargazHasBeenPressed ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _teargazHasBeenPressed = !_teargazHasBeenPressed;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('pepperSpray'),
                    textColor: Colors.white,
                    // 2
                    color:
                        _peppersprayHasBeenPressed ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _peppersprayHasBeenPressed =
                            !_peppersprayHasBeenPressed;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('keys'),
                    textColor: Colors.white,
                    // 2
                    color: _keysHasBeenPressed ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _keysHasBeenPressed = !_keysHasBeenPressed;
                      })
                    },
                  ),
                  RaisedButton(
                    child: new Text('medical Kit'),
                    textColor: Colors.white,
                    // 2
                    color: _medicalkitHasBeenPressed ? Colors.teal : Colors.red,
                    // 3
                    onPressed: () => {
                      setState(() {
                        _medicalkitHasBeenPressed = !_medicalkitHasBeenPressed;
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
