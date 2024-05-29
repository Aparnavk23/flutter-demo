import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/Jwellery/jwellerybottombutton.dart';
import 'package:demo/User/user_details.dart';
import 'package:demo/User/user_home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserCreate extends StatefulWidget {
  const UserCreate({super.key});

  @override
  State<UserCreate> createState() => _UserCreateState();
}

class _UserCreateState extends State<UserCreate> {
  final formkey = GlobalKey<FormState>();
  var mail = TextEditingController();
  var password = TextEditingController();
  String id = "";
  void userLogin() async {
    final user = await FirebaseFirestore.instance
        .collection('UserReg')
        .where('Email', isEqualTo: mail.text)
        .where('Password', isEqualTo: password.text)
        .get();
    if (user.docs.isNotEmpty) {
      id = user.docs[0].id;
      print('done');

      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString('id', id);
      print("get sp");
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return BottomButton();
        },
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            "username and password error",
            style: TextStyle(color: Colors.red),
          )));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/WOMEN.png'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login/Register',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  "Start to save Everyday.",
                  style: TextStyle(color: Colors.white),
                ),
                TextFormField(
                  controller: mail,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your Email ';
                    }
                  },

                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      gapPadding: 10,
                    ),
                    labelText: "Enter your Email",
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(75, 70, 70, 1),
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                TextFormField(
                  controller: password,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter correct password ';
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      gapPadding: 10,
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(75, 70, 70, 1),
                      fontSize: 14,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * .03),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        userLogin();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(250, 205, 24, 1),
                        foregroundColor: Colors.black),
                    child: Text('Login')),
                SizedBox(
                  height: 3,
                ),
                TextButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserDetail(),
                        ));},
                    child: Text(
                      "Create New Acount",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
