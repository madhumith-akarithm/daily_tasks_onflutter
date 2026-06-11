import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text("Home page"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text("Welcome to home page!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Card(
            child: ListTile(
              title: Text("Upade 1: New feature added"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Update 2: Bug fixed"),
            ),
          )
        ],
      ),
    );
  }
}
