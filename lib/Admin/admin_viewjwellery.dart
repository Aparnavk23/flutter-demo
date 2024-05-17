import 'package:demo/Admin/admin_jwellery.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminView extends StatefulWidget {
  const AdminView({super.key});

  @override
  State<AdminView> createState() => _AdminViewState();
}

class _AdminViewState extends State<AdminView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 122,
        backgroundColor: Color.fromRGBO(66, 135, 156, 1),
        shadowColor: Colors.grey,
        elevation: 10,

        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AdminJwellery()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Edit",
                    style: GoogleFonts.inriaSerif(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .010,
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.black,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .060,
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.02,),
              Container(
                height: MediaQuery.of(context).size.height*.09,
                width:MediaQuery.of(context).size.width*.15,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),image: DecorationImage(image: AssetImage("assets/rectgirl.png"),fit: BoxFit.fill)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.04,),

              Text("Child Name",style: TextStyle(color: Colors.grey),),

              Text(""),
              Divider(color: Colors.grey,endIndent: 20,),
              SizedBox(height: MediaQuery.of(context).size.height*.01,),
              Icon(Icons.home,color: Colors.grey,),
              SizedBox(height: MediaQuery.of(context).size.height*.01,),
              Text(""),
              Divider(endIndent: 20,),
              SizedBox(height: MediaQuery.of(context).size.height*.01,),
              Icon(Icons.calendar_month_rounded,color: Colors.grey,),
              SizedBox(height: MediaQuery.of(context).size.height*.01,),
              Text(""),
              Divider(endIndent: 20,),
              SizedBox(height: MediaQuery.of(context).size.height*.01,),
              Text("Parent Name",style: TextStyle(color: Colors.grey),),
              SizedBox(height: MediaQuery.of(context).size.height*.01,),
              Text(""),
              Divider(endIndent: 20,),
              SizedBox(
                height: MediaQuery.of(context).size.height* 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: InkWell(onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminJwellery()));
                },
                  child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                          Text("Logout",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white, fontSize: 20)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.015,
                          ),
                          Icon(Icons.login_outlined,color: Colors.white,)
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFC65264),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
