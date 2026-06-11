import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

  class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int level=0;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text(
              "ID CARD",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black45,
          elevation: 0.0,
        ),
        floatingActionButton:FloatingActionButton(
            onPressed: (){
              setState(() {
                  level += 1;
              });
              print("clicked");
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.blueGrey,
        ) ,
        body:Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pinimg.com/170x/33/3b/7b/333b7b2a74a0489db93b38bb93065934.jpg'),
                    radius: 50.0,
                  ),
                ),
                Divider(
                  height: 90.0,
                  color: Colors.black87,
                ),
                Text(
                  "NAME ",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "MADHU",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  "LEVEL",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '$level',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),

                Row(
                  children: [
                    Icon(
                     Icons.email,
                     color: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "madhu@gmail.com",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 28.0,
                        letterSpacing: 2.0
                      ),
                    ),
                  ],
                ),

            ],
            ),
        ),

      );
    }
}





