import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/Jwellery/jwellery_login.dart';
import 'package:flutter/material.dart';

class JwelleryRegister extends StatefulWidget {
  const JwelleryRegister({super.key});

  @override
  State<JwelleryRegister> createState() => _JwelleryRegisterState();
}

class _JwelleryRegisterState extends State<JwelleryRegister> {
  final formkey = GlobalKey<FormState>();
  var jwelleryname = TextEditingController();
  var ownername = TextEditingController();
  var gstnumber = TextEditingController();
  var licencenumber = TextEditingController();
  var address = TextEditingController();
  var phonenumber = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirmpassword = TextEditingController();
  Future<dynamic> JewReg() async {
    print("done");
    await FirebaseFirestore.instance.collection("JewReg").add({
      "Jwellery Name": jwelleryname.text,
      "Owner Name": ownername.text,
      "GST Number": gstnumber.text,
      "Licence Number": licencenumber.text,
      "Address": address.text,
      "Phone Number": phonenumber.text,
      "Mail": email.text,
      "Password": password.text,
      "Confirm Password": confirmpassword.text,
    });
    print('done');
Navigator.push(context, MaterialPageRoute(builder: (context) {
  return JwelleryLogin();
},));
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                  width: 3,
                ),
                Text(
                  'Jwellery Name',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: jwelleryname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter required details";
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        // gapPadding: 10,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 3,
                ),
                Text(
                  'Owner Name',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: ownername,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter required details";
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        // gapPadding: 10,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 3,
                ),
                Text(
                  'GST Number',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: gstnumber,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter required details";
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        // gapPadding: 10,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 3,
                ),
                Text(
                  'Licence Number',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: licencenumber,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter required details";
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        // gapPadding: 10,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 3,
                ),
                Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: address,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter required details";
                    }
                  },
                  minLines: 3,
                  maxLines: 3,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        // gapPadding: 10,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 3,
                ),
                Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: phonenumber,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter required details";
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        // gapPadding: 10,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 3,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter required details";
                    }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          // gapPadding: 10,
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Enter your Email",
                      labelStyle: TextStyle(color: Color(0xFF747070))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                  width: MediaQuery.of(context).size.width * .03,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .010,
                ),
                TextFormField(
                  controller: password,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter required details";
                    }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          // gapPadding: 10,
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Color(0xFF747070))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .010,
                ),
                TextFormField(
                  controller: confirmpassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter required details";
                    }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          // gapPadding: 10,
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(color: Color(0xFF747070))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .030,
                ),
                Center(
                    child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      JewReg();
                    }
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF000000)),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
