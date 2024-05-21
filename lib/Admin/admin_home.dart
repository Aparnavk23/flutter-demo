import 'package:demo/Admin/admin_jwellery.dart';
import 'package:demo/Admin/admin_user.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
              "Manage",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
      ),
    backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ElevatedButton(onPressed: (){}, child:Text('User',style: TextStyle(fontSize: 20 ),),style: ElevatedButton.styleFrom(
              //   backgroundColor: Color.fromRGBO(217, 217, 217, 1),foregroundColor: Colors.black,
              // ),),
              // SizedBox(height: 30,),
              // ElevatedButton(onPressed: (){}, child:Text('Jwellery',style: TextStyle(fontSize: 20 ),),style: ElevatedButton.styleFrom(
              //   backgroundColor: Color.fromRGBO(217, 217, 217, 1),foregroundColor: Colors.black,
              // ),),
              // SizedBox(height: 30,),
              // ElevatedButton(onPressed: (){}, child:Text('Orders',style: TextStyle(fontSize: 20 ),),style: ElevatedButton.styleFrom(
              //   backgroundColor: Color.fromRGBO(217, 217, 217, 1),foregroundColor: Colors.black,
              // ),),
              // SizedBox(height: 30,),
              // ElevatedButton(onPressed: (){}, child:Text('Payment',style: TextStyle(fontSize: 20 ),),style: ElevatedButton.styleFrom(
              //   backgroundColor: Color.fromRGBO(217, 217, 217, 1),foregroundColor: Colors.black,
              // ),),
              // SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminUser(),
                      ));
                },
                child: Container(
                  height: 78,
                  width: 197,
                  child: Center(
                    child: Text(
                      "User",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
              ),
              SizedBox(
                height:15,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminJwellery(),
                      ));
                },
                child: Container(
                  height: 78,
                  width: 197,
                  child: Center(
                    child: Text(
                      "Jwellery",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 78,
                width: 197,
                child: Center(
                  child: Text(
                    "Orders",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(217, 217, 217, 1),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Container(
              //   height: 78,
              //   width: 197,
              //   child: Center(
              //     child: Text(
              //       "Payment",
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 28,
              //       ),
              //     ),
              //   ),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: Color.fromRGBO(217, 217, 217, 1),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
