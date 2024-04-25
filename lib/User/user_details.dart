import 'package:demo/User/user_welcome.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  List<String> option = ['option1', 'option 2', 'option3'];
  String curentoption = ('0');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height* 1 ,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/details.png'), fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Padding(
    padding: const EdgeInsets.symmetric(
    horizontal: 15,
    ),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Row(
                      children: [
                        Text(
                          'Lets get to know \n you.',
                          style: TextStyle(
                              color: Color.fromRGBO(250, 205, 24, 1), fontSize: 30),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height* .060,
                    ),
                    Row(
                      children: [
                        Text(
                          'whats your name?',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    TextFormField  (
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          // gapPadding: 10,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        labelText: "Enter your name",
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(116, 112, 112, 1)),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*.010,
                    ),
                    Row(
                      children: [
                        Text(
                          'whats your age?',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
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
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(116, 112, 112, 1)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("What gender do you identify?",
                            style: TextStyle(color: Colors.white, fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        ListTile(
                          leading: Radio(
                            value: option[0],
                            groupValue: curentoption,
                            onChanged: (value) {
                              setState(() {
                                curentoption = value.toString();
                              });
                            },
                          ),
                          title: Text(
                            'Female',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          leading: Radio(
                            value: option[1],
                            groupValue: curentoption,
                            onChanged: (value) {
                              setState(() {
                                curentoption = value.toString();
                              });
                            },
                          ),
                          title: Text(
                            'male',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ListTile(
                          leading: Radio(
                            value: option[2],
                            groupValue: curentoption,
                            onChanged: (value) {
                              setState(() {
                                curentoption = value.toString();
                              });
                            },
                          ),
                          title: Text(
                            'other',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Upload any valid ID proof',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          gapPadding: 10,
                        ),
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(116, 112, 112, 1)),
                      ),
                    ),
                                  ],
                                ),
                    SizedBox(
                      height:10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Fluttertoast.showToast(
                        //     msg: "This is Center Short Toast",
                        //     toastLength: Toast.LENGTH_SHORT,
                        //     gravity: ToastGravity.CENTER,
                        //     timeInSecForIosWeb: 1,
                        //     backgroundColor: Colors.red,
                        //     textColor: Colors.white,
                        //     fontSize: 16.0
                        // );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UserWelcome()),
                        );
                      },
                      child: Text('submit'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(250, 205, 24, 1),
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
