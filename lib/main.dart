import 'package:demo/Admin/admin_login.dart';
import 'package:demo/User/User_create.dart';
import 'package:demo/User/user_login.dart';
import 'package:demo/practice.dart';
import 'package:demo/text.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:UserLogin(),
    );
  }
}
