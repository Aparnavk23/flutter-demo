import 'package:flutter/material.dart';

class JwelleryDiscount extends StatefulWidget {
  const JwelleryDiscount({super.key});

  @override
  State<JwelleryDiscount> createState() => _JwelleryDiscountState();
}

class _JwelleryDiscountState extends State<JwelleryDiscount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
          child: Container(
          padding: EdgeInsets.all(50),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(
          height: 135,
          width: 297,
          child:Center(
            child: Text("Jwellery Discount", style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:Colors.white,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 135,
          width: 297,
          child:Center(
            child: Text("current Rate", style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:Colors.white,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 135,
          width: 297,
          child:Center(
            child: Text("Discount %", style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:Colors.white,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          height: 135,
          width: 297,
          child:Center(
            child: Text("Current rate with Discount", style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:Colors.white,
          ),
        ),
      ],

    ),
    ),
    ),
    ),
    );
  }
}
