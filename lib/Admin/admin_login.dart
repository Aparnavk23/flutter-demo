import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Adminlogin extends StatefulWidget {
  const Adminlogin({super.key});

  @override
  State<Adminlogin> createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
TextFormField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: "username/Email"
  ),
),
            SizedBox(height: 30,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password"
              ),
            ),
            SizedBox(height:30 ,),
            ElevatedButton(onPressed: (){}, child:Text('submit'),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,foregroundColor: Colors.black,
            ),),
            SizedBox(height: 30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center  ,
              children: [
                Text("Forgot Password?"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
