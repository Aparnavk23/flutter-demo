import 'package:demo/User/user_create.dart';
import 'package:demo/User/user_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(color:Colors.black,image: DecorationImage(image:AssetImage('assets/A11.png'),fit: BoxFit.cover,)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center  ,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            TextButton(onPressed: (){}, child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 24))),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Login/Signup with email',style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => UserType()),);
                            }, child: Text("Create new account.",style: TextStyle(color: Color.fromRGBO(91, 79, 79, 1)),)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
