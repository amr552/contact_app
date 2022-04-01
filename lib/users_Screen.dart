import 'package:flutter/material.dart';
class UserModel {
  final int id;
  final String name ;
  final String phone;

   UserModel({
  required this.id,
  required this.name,
  required this.phone,
});
}

class users_Screen extends StatelessWidget {
List <UserModel> users= [
  UserModel(
      id: 1,
      name: "Amr naguib",
      phone: "+905550470789"),
  UserModel(
      id: 2,
      name: "Ahmed naguib",
      phone: "+9055501566789"),
  UserModel(
      id: 3,
      name: "Ali naguib",
      phone: "+905515690789"),
  UserModel(
      id: 1,
      name: "Amr naguib",
      phone: "+905550470789"),
  UserModel(
      id: 2,
      name: "Ahmed naguib",
      phone: "+9055501566789"),
  UserModel(
      id: 3,
      name: "Ali naguib",
      phone: "+905515690789"),
  UserModel(
      id: 1,
      name: "Amr naguib",
      phone: "+905550470789"),
  UserModel(
      id: 2,
      name: "Ahmed naguib",
      phone: "+9055501566789"),
  UserModel(
      id: 3,
      name: "Ali naguib",
      phone: "+905515690789"),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('users'),


      ),
      body:ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),  //that is contains every item like users[0]
          separatorBuilder: (context,index) => Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,),

    );

  }
  Widget buildUserItem(UserModel users) => Padding( // here i recieved the userModel with the same type of his object
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0 ,
          child:Text(
            '${users.id}',
            style: TextStyle(fontSize: 25.0,
              fontWeight: FontWeight.bold,),
          ),
        ),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // that is responsible to get the widges behind each other
          children: [
            Text(
              '${users.name} ',
              style: TextStyle(fontSize: 25.0,
                fontWeight: FontWeight.bold,),
            ),
            Text(
              '${users.phone}',
              style: TextStyle(color: Colors.grey,),
            ),
          ],
        ),
      ],
    ),
  );

}
