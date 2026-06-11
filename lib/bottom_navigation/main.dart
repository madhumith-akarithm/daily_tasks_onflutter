import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'ProfilePage.dart';
import 'SettingsPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex=0;
  final List<Widget> _pages = [
    const HomePage(),
    const ProfilePage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text("Home",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          ],
      ),
    );
  }
}


