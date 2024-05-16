import 'package:demo/User/user_details.dart';
import 'package:flutter/material.dart';

class JwelleryLogin extends StatefulWidget {
  const JwelleryLogin({super.key});

  @override
  State<JwelleryLogin> createState() => _JwelleryLoginState();
}

final _nameController = TextEditingController();
final _passwordController = TextEditingController();

final _Formkey = GlobalKey<FormFieldState>();

class _JwelleryLoginState extends State<JwelleryLogin> {

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
            key: _Formkey,
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
                  controller: _nameController,
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 13,
                ),
                TextFormField(
                  controller: _passwordController,
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter value';
                    }
                    return null;
                  },
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
                      // if(_Formkey.currentState!.validate()){
                      //   print('is validate');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserDetail(),
                          ));
                      // }else {
                      //   print('not  validate');
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(250, 205, 24, 1),
                        foregroundColor: Colors.black),
                    child: Text('Login')),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
