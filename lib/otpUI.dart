import 'package:flutter/material.dart';

class otpUI extends StatefulWidget {
  const otpUI({super.key});

  @override
  State<otpUI> createState() => _otpUIState();
}

class _otpUIState extends State<otpUI> {

  var otpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP"),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: otpcontroller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter OTP",
                suffixIcon: Icon(Icons.phone_rounded),
                border: OutlineInputBorder(

                )

              ),
            ),
          ),

          SizedBox(height: 30),
          ElevatedButton(onPressed:(){}, child: Text("send OTP"))
        ],
      ),
    );
  }
}
