import 'package:flutter/material.dart';
import 'homeScreen.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    ) ;
  }
}

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  
  final height =TextEditingController();
  final weight =TextEditingController();
  String result ="";
  void calBMI(){
    final h = double.tryParse(height.text) ?? 0;
    final w =double.tryParse(weight.text) ?? 0;
    
    if(h>0 && w>0){
      final bmi= w/((h/100) * (h/100));
      String status="";
      
      if(bmi < 18.5){
        status = "Underweight";
      }
      else if(bmi < 24.9){
        status = "Normal";
      }
      else if(bmi < 22.9){
        status="Overweight";
      }
      else{
        status = "Obese";
      }
      
      setState(() {
        result= "Your BMI : ${bmi.toStringAsFixed(2)} ($status)";
      });
    }
    else{
      setState(() {
        result = "Please enter valid values";
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR",
        style: TextStyle(
            fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal[200],
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: height,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Height (cm)"),
            ),
            TextField(
              controller: weight,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Weight (kg)"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white60,
                foregroundColor: Colors.black
              ),
              onPressed: calBMI,
              child: Text("Calculate"),
            ),
            SizedBox(height: 20,),
            Text(
              result,
              style: TextStyle(
                fontSize: 20
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white60,
                foregroundColor: Colors.black
              ),
              child: Text("Back to Home"),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

