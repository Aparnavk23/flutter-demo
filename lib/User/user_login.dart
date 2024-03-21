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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/A11.png",height: 100,width: 100,),
            TextButton(onPressed: () {}, child: Text('Login',style: TextStyle(fontSize: 25,color: Colors.white),),),
            Text(' login/signup with Email',style: TextStyle(color: Colors.white),),
            SizedBox(
              height: 13,
            ),
            ElevatedButton(
                onPressed: () {}, child: Text("Create New Account",style: TextStyle(color: Color.fromRGBO(91, 79, 79, 1)),)),
          ],
        ),
      ),
    );
  }
}
