import 'package:flutter/material.dart';

class UserMenu extends StatefulWidget {
  const UserMenu({super.key});

  @override
  State<UserMenu> createState() => _UserMenuState();
}

class _UserMenuState extends State<UserMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(' ')
          ],
        ),
      )

    );
  }
}
 