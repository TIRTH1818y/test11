import 'dart:js_interop';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class phoneotp extends StatefulWidget {
  const phoneotp({super.key});

  @override
  State<phoneotp> createState() => _phoneotpState();
}

class _phoneotpState extends State<phoneotp> {

  var phonenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restore Password"),
        centerTitle:  true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: phonenumber,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Phone Number",
                    suffixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(24),
                    )
                  ),
                ),
              ),
          SizedBox(height : 30),
          ElevatedButton(onPressed:()async{

          }, child: Text("Verify Your Number"))
            
        ],
      ),
    );
  }
}

class FirebaseAuth {
}
