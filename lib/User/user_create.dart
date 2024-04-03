import 'package:demo/User/user_details.dart';
import 'package:flutter/material.dart';

class UserCreate extends StatefulWidget {
  const UserCreate({super.key});

  @override
  State<UserCreate> createState() => _UserCreateState();
}

class _UserCreateState extends State<UserCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/WOMEN.png'),fit: BoxFit.cover,)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login/Register',style: TextStyle(color: Colors.white,fontSize: 24),),
              Text("Start to save Everyday.",style: TextStyle(color: Colors.white),),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    gapPadding: 10,
                  ),
                  labelText: "Enter your Email",
                      labelStyle: TextStyle(color: Color.fromRGBO(75, 70, 70, 1),fontSize: 14,),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    gapPadding: 10,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Color.fromRGBO(75, 70, 70, 1),fontSize: 14,),
                ),
              ),
              Text('Forgot Password?',style: TextStyle(color:Colors.white,fontSize: 10,),),
              SizedBox(height: 13,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) =>UserDetail()),);
              },style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(250, 205, 24, 1),foregroundColor: Colors.black), child: Text('Login')),
            ],
          ),
        ),
      ),
    );
  }
}
