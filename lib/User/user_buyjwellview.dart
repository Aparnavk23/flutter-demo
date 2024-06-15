import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserJwellView extends StatefulWidget {
  const UserJwellView({super.key,required this.id});
  final id;
  @override
  State<UserJwellView> createState() => _UserJwellViewState();
}

class _UserJwellViewState extends State<UserJwellView> {
  GETDOC() async {
    jewview = await FirebaseFirestore.instance
        .collection('JewReg')
        .doc(widget.id)
        .get();
  }

  DocumentSnapshot? jewview;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: GETDOC(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text("Error:${snapshot.error}");
          }

          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Column(
                children: [
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .06,
                  ),
                  Center(
                    child: Container(
                      height: 500,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ListTile(
                                title: Column(
                                  children: [
                                    SizedBox(
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * .02,
                                    ),
                                    Row(
                                      children: [
                                        Text("Jwellery Name:",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * .02,
                                        ),
                                        Text(
                                          jewview!["Jwellery Name"],
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * .02,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Owner name:",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * .02,
                                        ),
                                        Text(
                                          jewview!["Owner Name"],
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * .02,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "GST Number:",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * .02,
                                        ),
                                        Text(
                                          jewview!["GST Number"],
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * .02,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Liecense Number:",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * .02,
                                        ),
                                        Text(
                                          jewview!["Licence Number"],
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * .02,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Address:",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * .02,
                                        ),
                                        Text(
                                          jewview!["Address"],
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * .02,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Phone Number:",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * .02,
                                        ),
                                        Text(
                                          jewview!["Phone Number"],
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * .02,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Email:",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * .02,
                                        ),
                                        Text(
                                          jewview!["Mail"],
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * .02,
                                    ),

                                    Container(
                                      height: 60,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * .02,
                                    ),
                                    InkWell(
                                      onTap: (){
                                        
                                      },
                                      child: Container(
                                        child: Center(child: Text("Buy Now",style: TextStyle(fontSize: 15,color: Colors.black),)),
                                        height: 60,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.orangeAccent,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }

                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}