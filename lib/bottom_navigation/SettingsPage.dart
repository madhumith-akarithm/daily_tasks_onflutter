import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _darkMode=false;
  bool _notify= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      body:ListView(
        children: [
          SwitchListTile(
            title: Text("Enable dark mode"),
            value: _darkMode,
            onChanged: (val){
              setState(()=>_darkMode= val);
            },
          ),
          SwitchListTile(
            title: Text("Enable notifications"),
            value: _notify,
            onChanged: (val){
              setState(()=> _notify = val);
            },
          ),
        ],
      )
    );
  }
}
