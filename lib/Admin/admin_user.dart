import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/Admin/AdminUserView.dart';
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
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.black,
              title: Center(
                  child: Text(
                "Users",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
            backgroundColor: Colors.black,
            body: FutureBuilder(
              future: FirebaseFirestore.instance.collection("UserReg").get(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return Text("Error:${snapshot.error}");
                }
                final UserList = snapshot.data?.docs ?? [];
                return ListView.builder(
                  itemCount: UserList .length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .02,
                          ),
                          Card(
                              child: ListTile(
                            leading: Text(
                              UserList[index]["User Name"],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => AdminViewUser(),
                                          ));
                                    },
                                    child: Icon(CupertinoIcons.eye)),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .03,
                                ),

                              ],
                            ),
                          )),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            )));
  }
}
