import 'package:demo/User/User_create.dart';
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
      body:Container(
        decoration: BoxDecoration(color:Colors.black,image: DecorationImage(image:AssetImage('assets/A11.png'),fit: BoxFit.fill,)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){}, child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 24))),
            Text('Login/Signup with email',style: TextStyle(color: Colors.white)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => UserCreate()),);
            }, child: Text("Create new account.",style: TextStyle(color: Color.fromRGBO(91, 79, 79, 1)),)),
          ],
        ),
      )
    );
  }
}
