import 'package:demo/User/User_profile.dart';
import 'package:demo/User/user_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserBottombuton extends StatefulWidget {
  const UserBottombuton({super.key});

  @override
  State<UserBottombuton> createState() => _UserBottombutonState();
}

class _UserBottombutonState extends State<UserBottombuton> {
  int currentindex=0;
  final pages=[
  UserHome(),
    Userprofile(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.black,
        currentIndex: currentindex,
        onTap: (newIndex) {
          setState(() {
            currentindex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              label: 'Home'),

          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person_crop_circle_fill,
                color: Colors.white,
              ),
              label: 'Profile'),
        ],
        selectedItemColor: Color.fromRGBO(239, 171, 23, 1.0),
        unselectedItemColor: Color.fromRGBO(143, 154, 163, 1),
        selectedLabelStyle: TextStyle(color: Color.fromRGBO(191, 68, 116, 1)),
      ),


    )
    ;
  }
}
