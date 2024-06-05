import 'package:demo/User/user_buy.dart';
import 'package:demo/User/user_history.dart';
import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(250, 210, 24, 1),
          title: Row(
            mainAxisSize: MainAxisSize.min, // Restrict Row width
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                'Current Gold Rate:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Rs.6815/gm',
                style: TextStyle(fontSize: 20),
                overflow: TextOverflow.ellipsis, // Handle overflow
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserBuy(),
                      ),
                    );
                  },
                  child: Container(
                    height: 200,
                    width: 345,
                    child: Center(
                      child: Text(
                        'Buy',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 200,
                    width: 345,
                    child: Center(
                      child: Text(
                        'Sell',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UserHistory()));
                  },
                  child: Container(
                    height: 60,
                    width: 345,
                    child: Center(
                      child: Text(
                        'History',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromRGBO(250, 205, 24, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
