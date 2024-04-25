import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
        padding: EdgeInsets.all(60),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: (){}, child:Text('User',style: TextStyle(fontSize: 20 ),),style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(217, 217, 217, 1),foregroundColor: Colors.black,
        ),),
        SizedBox(height: 30,),
      ],
    ),
        ),
    );
  }
}

