import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile page"), centerTitle: true,),
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://img.magnific.com/premium-vector/woman-avatar-profile-icon-vector-illustration_874723-207.jpg?semt=ais_hybrid&w=740&q=80"),
            ),
            SizedBox(height: 20,),
            Text(
              "Madhu",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Software Developer",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20,),
            Text("About:Passinate developer ",
              textAlign: TextAlign.center,
            ),

          ],
        ),
      )
    );
  }
}
