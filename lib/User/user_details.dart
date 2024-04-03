import 'package:flutter/material.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image:AssetImage('assets/details.png'),fit: BoxFit.cover)),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text('Lets get to know you.',style: TextStyle(color: Color.fromRGBO(250, 205, 24, 1),fontSize:30 ),),
                      ],
                    ),SizedBox(height: 13,
                    ),
                    Row(
                      children: [
                        Text('whats your name?',style: TextStyle(color:Colors.white,fontSize: 20),),
                      ],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          gapPadding: 10,
                        ),
                        labelText: "Enter your name",
                        labelStyle: TextStyle(color:Color.fromRGBO(116, 112, 112, 1)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('whats your age?',style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          gapPadding: 10,
                        ),
                        labelText: "Enter your age",
                        labelStyle: TextStyle(color: Color.fromRGBO(116, 112, 112, 1)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("What gender do you identify?",style: TextStyle(color: Colors.white,fontSize: 20)),
                      ],
                    ),

                  ],
  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
