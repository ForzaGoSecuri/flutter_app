import 'package:flutter/material.dart';
import 'package:forza_go_securi/shared/constants.dart';

class MaterialKit extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MaterialKit> {
  final _formKey = GlobalKey<FormState>();
  final List<String> materials = [
    "snapHook",
    "rode",
    "knife",
    "baton",
    "flashlight",
    "tearGas",
    "pepperSpray",
    "keys",
    "medicalKit",
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: textInputDecoration,
              items: materials.map((tools) {
                return DropdownMenuItem(
                  value: tools,
                  child: Text('add $tools in the equipment'),
                );
              }).toList(),
              onChanged: (val) => setState(() => Colors.yellow),
            ),
          ],
        ));
  }
}
