import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminUser extends StatefulWidget {
  const AdminUser({super.key});

  @override
  State<AdminUser> createState() => _AdminUserState();
}

class _AdminUserState extends State<AdminUser> {
  @override
  Widget build(BuildContext context) {
        return SafeArea(
      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Center(child: Text("USERS",style: TextStyle(color: Colors.white,fontSize: 20),)),
        ),
          backgroundColor: Colors.black,
          body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    Card(
                        child: ListTile(
                      leading: Text(
                        "Jithusha",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      trailing: Icon(CupertinoIcons.eye),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}
