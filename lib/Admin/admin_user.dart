import 'package:flutter/material.dart';

class AdminUser extends StatefulWidget {
  const AdminUser({super.key});

  @override
  State<AdminUser> createState() => _AdminUserState();
}

class _AdminUserState extends State<AdminUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
        child: Container(
        padding: EdgeInsets.all(50),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
    Container(
    height: 78,
    width: 197,
    child: Center(
    child: Text(
    "User",
    style: TextStyle(
    color: Colors.black,
    fontSize: 28,
    ),
    ),
    ),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color.fromRGBO(217, 217, 217, 1),
    ),

    ),
    SizedBox(height: 30,),
    ],
    ),),)
    );

  }
}
