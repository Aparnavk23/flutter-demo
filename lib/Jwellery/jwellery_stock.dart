import 'package:flutter/material.dart';

class JwelleryStock extends StatefulWidget {
  const JwelleryStock({super.key});

  @override
  State<JwelleryStock> createState() => _JwelleryStockState();
}

class _JwelleryStockState extends State<JwelleryStock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
        padding: EdgeInsets.all(60),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    ),)
    );
  }
}
