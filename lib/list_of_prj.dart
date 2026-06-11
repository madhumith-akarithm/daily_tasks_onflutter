import 'package:flutter/material.dart';

class listOfProj extends StatelessWidget {

  final Icon icon;
  final String;
  final void Function() ? onTap ;
  final dynamic text;
  const listOfProj({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap, this.String,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.home),
      title: Text("Home"),
      onTap: (){
        Navigator.pop(context);
      },
    );
  }
}
