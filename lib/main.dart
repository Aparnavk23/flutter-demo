import 'package:demo/Admin/admin_home.dart';
import 'package:demo/Admin/admin_login.dart';
import 'package:demo/Admin/admin_user.dart';
import 'package:demo/Admin/admin_viewjwellery.dart';
import 'package:demo/Jwellery/jwellery_login.dart';
import 'package:demo/Jwellery/jwellery_register.dart';
import 'package:demo/User/User_create.dart';
import 'package:demo/User/user_buy.dart';
import 'package:demo/User/user_details.dart';
import 'package:demo/User/user_home.dart';
import 'package:demo/User/user_login.dart';
import 'package:demo/User/user_menu.dart';
import 'package:demo/User/user_type.dart';
import 'package:demo/User/user_welcome.dart';
import 'package:demo/practice.dart';
import 'package:demo/text.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
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
      home:  Adminlogin(),
    );
  }
}
