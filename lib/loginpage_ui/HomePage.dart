import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(//background
                  height:MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network('https://img.magnific.com/free-vector/shiny-blue-wavy-background_1055-2947.jpg?semt=ais_hybrid&w=740&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
                //login wrd
                Positioned(
                  top: 100,
                    left: 170,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38
                      ),
                    ),
                ),
                //first input container
                Positioned(
                  top: 200,
                    left: 65,
                    child:Column(
                      children: [
                        //extract method for username
                        usernameTextField(),
                        SizedBox(height: 15,),
                        //extract method for password
                        passwordField(),
                        SizedBox(height: 30,),
                        //login button
                        loginButtonField(),
                        SizedBox(height: 15,),
                        Text(
                          "forgot passsword",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45
                          ),
                        )
                      ],
                    ),
                ),
              ],
            ),
            SizedBox(height:20 ,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    color: Colors.black,
                    width: 100,
                    height: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          "or connect with",

                        )
                      ],
                    ),
                  )
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }

  Container loginButtonField() {
    return Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                            "login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                    );
  }

  Container passwordField() {
    return Container(
                    width:300 ,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black26,width: 2)
                    ),
                    //person icon, hint
                    child: Row(
                    children: [
                    Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(Icons.lock_open_outlined,
                    color: Colors.grey,
                    ),
                    ),
                    Expanded(
                    child: Padding(
                    padding: EdgeInsets.only(top:3,bottom: 3,left: 10),
                    child: TextField(
                    decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle:
                    TextStyle(
                    color: Colors.black45,
                    ),
                    border: InputBorder.none,
                    ),
                    ),
                    ),
                    ),
                    ],
                    ),
                    );
  }

  Container usernameTextField() {
    return Container(
                      width:300 ,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black26,width: 2)
                      ),
                      //person icon, hint
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                          child: Icon(Icons.person_outlined,
                          color: Colors.grey,
                          ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top:3,bottom: 3,left: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Username",
                                  hintStyle:
                                    TextStyle(
                                      color: Colors.black45,
                                    ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          //green tick icon
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    );
  }
}
