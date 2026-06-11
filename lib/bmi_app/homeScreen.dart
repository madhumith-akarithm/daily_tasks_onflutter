import 'package:daily_tasks_onflutter/home_drawer.dart';
import 'package:flutter/material.dart';
import 'bmiApp.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://m.media-amazon.com/images/I/61iSsiqXqqL.png"),
            fit: BoxFit.cover,
          ),
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(30)
                  )
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_)=>BmiScreen()),
                  );
                },
                child: Text(
                  "Click to Calculate...!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    //color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>homeDrawer()),
                ); // goes back to HomeScreen
              },
              child: const Text("Back to Home"),
            ),

          ],
        )

      ),
    );
  }
}
