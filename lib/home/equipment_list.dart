import 'package:flutter/material.dart';
import 'package:forza_go_securi/models/equipment.dart';
import 'package:provider/provider.dart';
import 'package:forza_go_securi/home/agent_tile.dart';

class ToolList extends StatefulWidget {
  @override
  _ToolListState createState() => _ToolListState();
}

class _ToolListState extends State<ToolList> {
  @override
  Widget build(BuildContext context) {
    final agentEquipments = Provider.of<List<Equipment>?>(context) ?? [];
    agentEquipments.forEach((agentEquipment) {
      print(agentEquipment.name);
      print(agentEquipment.tools);
    });

    return ListView.builder(
      itemCount: agentEquipments.length,
      itemBuilder: (context, index) {
        return AgentTile(tool: agentEquipments[index]);
      },
    );
  }
}
