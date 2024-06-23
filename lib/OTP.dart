
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test11/otpUI.dart';

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
        title: Text("OTP test "),
        centerTitle: true,
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
                  hintText: "+91 add Enter Phone Number",
                  suffixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  )),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: () async {

                await
                //allocated phone number in firebase
                FirebaseAuth.instance.verifyPhoneNumber(
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    //jo verification fail thai to ex ni andr Exception jase
                    verificationFailed: (FirebaseAuthException ex) {},
                    //verification screen par mokal va mare and jo token expire thai int resendtoken thi
                    codeSent: (String verificationid, int? resendtoken) {
                      Navigator.push(context, MaterialPageRoute(builder:(Context)=>otpUI(verificationid: verificationid,) ));
                    },
                    //jo OTP expire thai to ("verificationid ")  phonenumber textfield thi pachu OTP mokal va mate
                    codeAutoRetrievalTimeout: (String verificationid) {},
                    phoneNumber: phonenumber.text.toString());
              },
              child: Text("Verify Your Number"))
        ],
      ),
    );
  }
}
