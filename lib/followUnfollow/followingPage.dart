import 'package:flutter/material.dart';
import 'model.dart';

class Followingpage extends StatefulWidget {
  const Followingpage({super.key});

  @override
  State<Followingpage> createState() => _FollowingpageState();
}

class _FollowingpageState extends State<Followingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text(
          "Following",
          style: TextStyle(
              fontSize: 40,
              fontStyle: FontStyle.italic,
              color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(right: 20,left: 20),
        color: Colors.yellow.shade100,
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context,index){
            User user=userList[index];
            return PlayerList(user);
          },),
      ),
    );
  }
  PlayerList(User user){
    return Container(
      padding: EdgeInsets.only(top: 10,bottom: 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                    height: 60,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(user.imageUrl, fit: BoxFit.cover,),
                    ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style: TextStyle(

                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      user.username,
                      style: TextStyle(
                        color: Colors.black38,
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              child: MaterialButton(
                color: user.isFollowed
                    ? Colors.white70
                    : Colors.deepOrange,
                onPressed: (){
                  setState(() {
                    user.isFollowed=!user.isFollowed;
                  });
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                child: Text(
                  user.isFollowed ? 'unfollow' : 'follow',
                  style: TextStyle(color:Colors.black ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
