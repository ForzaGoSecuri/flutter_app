// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:forza_go_securi/models/utilisateur.dart';
import 'package:forza_go_securi/services/database.dart';
import 'package:forza_go_securi/shared/constants.dart';
import 'package:forza_go_securi/shared/loading.dart';
import 'package:provider/provider.dart';

/* Form used to update user name and equipment.
A first text input allow to update the username,
an second field is a drop down list with all equipments available,
when a user select an item in the list, it will update their personal equipment
 */

class SettingsForm extends StatefulWidget {
  const SettingsForm({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> tools = ['0', '1', '2', '3', '4'];

  // form values
  late String? _currentName;
  late String? _currentTools;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Utilisateur?>(context);

    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user!.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            UserData? userData = snapshot.data;

            return Form(
              key: _formKey,
              child: Column(children: <Widget>[
                Text(
                  'Update your settings',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 20.0),

                // text input to update the user name
                TextFormField(
                  initialValue: userData!.name,
                  decoration: textInputDecoration,
                  validator: (val) =>
                      val!.isEmpty ? 'Please enter a name' : null,
                  onChanged: (val) => setState(() => _currentName = val),
                ),
                SizedBox(height: 20.0),
                //dropdown list with the number of tools a user can have
                DropdownButtonFormField<String>(
                  decoration: textInputDecoration,
                  value: userData.usertools,
                  items: tools.map((tools) {
                    return DropdownMenuItem(
                      value: tools,
                      child: Text('add $tools in the equipment'),
                    );
                  }).toList(),
                  onChanged: (val) => setState(() => _currentTools = val!),
                ),
                // button to confirm update and redirect user to Home page
                ElevatedButton(
                    child: Text(
                      'Update',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await DatabaseService(uid: user.uid)
                            .updateUserData(_currentTools!, _currentName!);
                        Navigator.pop(context);
                      }
                    }),
              ]),
            );
          } else {
            /* to wait for the loading od data, or in case of error,
            loading spinner will show
             */
            return Loading();
          }
        });
  }
}
