class User{
  final String name;
  final String username;
  final String imageUrl;
  bool isFollowed;

  //constructor
  User(
  {
    required this.name,
    required this.username,
    required this.imageUrl,
    required this.isFollowed}
      );
}

List<User> userList =[
  User(name: 'Thalapathy_Vijay',
      username: 'Vijay',
      imageUrl: 'https://play-lh.googleusercontent.com/3pJB5khcZpssTIUNtJxvlDdwbFWlQA7wA7AUueDC0COb5qqXIaPYSuvQPwj_mlOTp5A=w526-h296-rw',
      isFollowed: false ),
  User(name: 'Actor_D',
       username:'dhanush',
       imageUrl: 'https://cdn.123telugu.com/content/wp-content/uploads/2023/08/Dhanush-1.jpg',
       isFollowed: false),
  User(name: 'VJS_Actor',
      username:'Vijay Sethupathi',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlgcLy77C4ctow6WdjtQ0iNPX5fQ115_zY9Q&s',
      isFollowed: false),
  User(name: 'Suriya_Jo',
      username: 'Suriya Jothika',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuPfOzSLD_s_UhIwOBlIQ48VhSYsHhszMw5A&s',
      isFollowed: false),
];