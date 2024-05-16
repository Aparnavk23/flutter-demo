import 'package:demo/Admin/admin_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Adminlogin extends StatefulWidget {
  const Adminlogin({super.key});

  @override
  State<Adminlogin> createState() => _AdminloginState();
}


class _AdminloginState extends State<Adminlogin> {
  adlogin() {
    if (email.text == 'admin@gmail.com' && password.text == '123') {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return AdminHome();
        },
      ));
    }
  }
  final formKey=GlobalKey<FormState>();
  var email =TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(60),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          TextFormField(
            controller: email,
            style: TextStyle(color: Colors.white,fontSize: 10,),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "username/Email"
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter valid username/Email';
              }
              return null;
            },
          ),
              SizedBox(height: 30,),
              TextFormField(
                controller: password,
                style: TextStyle(color: Colors.white,fontSize: 10,),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password"
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter correct password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center  ,
                children: [
                  Text("Forgot Password?",style: TextStyle(color: Colors.white,fontSize: 10),),
                ],
              ),
              SizedBox(height:30 ,),
              ElevatedButton(onPressed: (){
                if(formKey.currentState!.validate()){
                  adlogin();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminHome(),
                      ));
                }
              }, child:Text('submit'),style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,foregroundColor: Colors.black,
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
