import 'package:demo/User/User_create.dart';
import 'package:flutter/material.dart';

class UserAcType extends StatefulWidget {
  const UserAcType({super.key});

  @override
  State<UserAcType> createState() => _UserAcTypeState();
}

class _UserAcTypeState extends State<UserAcType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          // padding: EdgeInsets.all(60),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text('Select Account Type:',style: TextStyle(color: Colors.white,fontSize: 16,),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                          height:72,
                          width: 245,
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context) =>UserCreate()),);
                          }, child: Text('Jwellery',style: TextStyle(fontSize: 24 ),),style: ElevatedButton.styleFrom(backgroundColor:Color.fromRGBO(250, 205, 24, 1),foregroundColor:Colors.black,))),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        height: 72,
                        width: 245,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context) =>UserCreate()),);
                        }, child: Text('User',style: TextStyle(fontSize: 24),),style: ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor:Colors.black,),),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),



        ),
      ),
    );
  }
}
