import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'COUNTER APP',
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       primarySwatch: Colors.yellow,
//     ),
//     home: CounterPage(),
//   ));
// }

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int _counter=0;

  void _increment(){
    setState(() {
      _counter++;
    });
  }

  void _decrement(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY COUNTER APP'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: _decrement,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                    ),
                    child:
                    Text('-',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white70,
                    ),
                    ),
                ),
                SizedBox(width: 30.0),
                ElevatedButton(
                    onPressed:_increment,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12)
                    ),
                    child:Text('+',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white70,
                    ),
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    ) ;
  }
}


