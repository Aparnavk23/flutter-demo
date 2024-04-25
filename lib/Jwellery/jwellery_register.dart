import 'package:flutter/material.dart';

class JwelleryRegister extends StatefulWidget {
  const JwelleryRegister({super.key});

  @override
  State<JwelleryRegister> createState() => _JwelleryRegisterState();
}

class _JwelleryRegisterState extends State<JwelleryRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,width:3,),
              Text('Jwellery Name',style: TextStyle(fontSize: 18,color:Colors.white,),),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    // gapPadding: 10,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
          
              ),
          SizedBox(height: 20,width:3,),
          Text('Owner Name',style: TextStyle(fontSize: 18,color:Colors.white,),),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                // gapPadding: 10,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),),
          SizedBox(height: 20,width:3,),
        Text('GST Number',style: TextStyle(fontSize: 18,color:Colors.white,),),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              // gapPadding: 10,
                borderRadius: BorderRadius.circular(10)
            ),
          ),),
          SizedBox(height: 20,width:3,),
          Text('Licence Number',style: TextStyle(fontSize: 18,color:Colors.white,),),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                // gapPadding: 10,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),),
          SizedBox(height: 20,width:3,),
          Text('Address',style: TextStyle(fontSize: 18,color:Colors.white,),),
          SizedBox(
            height: 10,
          ),
          TextFormField(minLines:3,maxLines:3,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                // gapPadding: 10,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),),
          SizedBox(height: 20,width:3,),
          Text('Phone Number',style: TextStyle(fontSize: 18,color:Colors.white,),),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                // gapPadding: 10,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),),
          SizedBox(height: 20,width:3,),
          Text('Email',style: TextStyle(fontSize: 18,color:Colors.white,),),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                // gapPadding: 10,
                  borderRadius: BorderRadius.circular(10)
              ),
              labelText: "Enter your Email",
                labelStyle:TextStyle(color:Color(0xFF747070))
            ),),
              SizedBox( height: MediaQuery.of(context).size.height*.03,width : MediaQuery.of(context).size.width*.03,),
              Text('Password',style: TextStyle(fontSize: 18,color:Colors.white,),),
              SizedBox(
                height: MediaQuery.of(context).size.height*.010     ,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    // gapPadding: 10,
                      borderRadius: BorderRadius.circular(10)
                  ),
                    labelText: "Password",
                    labelStyle:TextStyle(color:Color(0xFF747070))
                ),),
              SizedBox( height: MediaQuery.of(context).size.height*.010,),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      // gapPadding: 10,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    labelText: "Confirm Password",
                    labelStyle:TextStyle(color:Color(0xFF747070))
                ),),
              SizedBox( height: MediaQuery.of(context).size.height*.030,),
              Center(child: ElevatedButton(onPressed: (){}, child: Text('Register',style: TextStyle(fontWeight: FontWeight.bold,fontSize:14,color: Color(0xFF000000)),),)),
            ],
          ),
        ),
      ),

    );
  }
}
