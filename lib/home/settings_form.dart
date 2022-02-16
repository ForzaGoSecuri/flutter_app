// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:forza_go_securi/shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  // form values
  late String _currentName;
  late String _currentSugars;
  int? _currentStrength;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: <Widget>[
        Text(
          'Update your settings',
          style: TextStyle(fontSize: 18.0),
        ),
        SizedBox(height: 20.0),
        TextFormField(
          decoration: textInputDecoration,
          validator: (val) => val!.isEmpty ? 'Please enter a name' : null,
          onChanged: (val) => setState(() => _currentName = val),
        ),
        SizedBox(height: 20.0),
        //dropdown
        DropdownButtonFormField<String>(
          decoration: textInputDecoration,
          items: sugars.map((sugar) {
            return DropdownMenuItem(
              value: sugar,
              child: Text('$sugar sugars'),
            );
          }).toList(),
          onChanged: (val) => setState(() => _currentSugars = val!),
        ),
        //slider
        Slider(
          value: (_currentStrength ?? 100).toDouble(),
          min: 100,
          max: 900,
          divisions: 8,
          onChanged: (val) => setState(() => _currentStrength = val.round()),
        ),
        ElevatedButton(
            child: Text(
              'Update',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              print(_currentName);
              print(_currentSugars);
              print(_currentStrength);
            }),
      ]),
    );
  }
}
