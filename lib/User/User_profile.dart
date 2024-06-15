import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/User/User_create.dart';
import 'package:demo/User/user_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class Userprofile extends StatefulWidget {
  const Userprofile({
    super.key,
  });

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  void initState() {
    super.initState();
    getData();
  }

  var ID;
  Future<void> getData() async {
    SharedPreferences spref = await SharedPreferences.getInstance();
    setState(() {
      ID = spref.getString("id");
      print(ID.toString());
    });
    print('data updated');
  }

  GETFILE() async {
    user = await FirebaseFirestore.instance.collection('UserReg').doc(ID).get();
  }

  DocumentSnapshot? user;
  PickedFile? _image;

  Future<void> _getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = PickedFile(pickedFile.path);
        print("picked image");
        update();
      } else {
        print('No image selected.');
      }
    });
  }

  Future<void> update() async {
    try {
      if (_image != null) {
        print("in");
        final ref = firebase_storage.FirebaseStorage.instance
            .ref()
            .child('profile_user')
            .child(DateTime.now().millisecondsSinceEpoch.toString());
        await ref.putFile(File(_image!.path));

        final imageURL = await ref.getDownloadURL();

        await FirebaseFirestore.instance.collection('UserReg').doc(ID).update({
          'path': imageURL,
        });

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Profile updated successfully'),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No image selected'),
          ),
        );
      }
    } catch (e) {
      print('Error updating profile: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error updating profile'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: FutureBuilder(
            future: GETFILE(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Text("Error:${snapshot.error}");
              }
              return Scaffold(
                floatingActionButton: Padding(
                  padding: const EdgeInsets.only(bottom: 610, right: 300),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          _getImage();
                        });
                      },
                      icon: Icon(
                        CupertinoIcons.plus_app_fill,
                        color: Colors.white,
                        size: 23,
                      )),
                ),
                backgroundColor: Colors.black,
                body: Column(
                  children: [
                    Container(
                      height: 165,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(1),
                            bottomRight: Radius.circular(20)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(183, 153, 30, 1.0),
                            Color.fromRGBO(246, 130, 45, 1.0),
                          ],
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(right: 325),
                          child: user!["path"] == "1"
                              ? Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: ClipOval(
                                    child: Image.asset(
                                      "assets/profile.png",
                                      height: 40,
                                      width: 80,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )
                              : CircleAvatar(
                                  radius: 10,
                                  backgroundImage: NetworkImage(user!["path"]),
                                )),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .02,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .04,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Name :",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Text(
                                  user!["User Name"],
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              endIndent: 20,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .01,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Gender :",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .04,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text(
                                    user!["Gender"],
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              endIndent: 20,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .01,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Account Details",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .01,
                            ),
                            Divider(
                              endIndent: 20,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "settings",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Divider(
                              endIndent: 20,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .01,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              "",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Divider(
                              endIndent: 20,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              "",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Help & Support",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Divider(
                              endIndent: 20,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => UserDetail()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Container(
                                    height: 40,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Text("Logout",
                                          style: GoogleFonts.ubuntu(
                                              color: Colors.black,
                                              fontSize: 15)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
