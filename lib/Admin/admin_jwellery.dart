import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminJwellery extends StatefulWidget {
  const AdminJwellery({super.key});

  @override
  State<AdminJwellery> createState() => _AdminJwelleryState();
}

class _AdminJwelleryState extends State<AdminJwellery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Center(
              child: Text(
            "Jwellery",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        ),
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
            mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Card(
                    child: ListTile(
                  leading: Text(
                    "CLARUS",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),


                  trailing: Row(
                    children: [
                      Icon(CupertinoIcons.eye),
                      Icon(Icons.edit),
                      Icon(CupertinoIcons.delete),
                    ],
                  ),
                )),
                SizedBox(
                  height: 30,
                ),
              ],
            );
          },
        ));
  }
}
