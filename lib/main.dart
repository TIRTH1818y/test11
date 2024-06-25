import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'OTP.dart';
import 'firebase_options.dart';

void main() async{
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
      title: 'Flutter ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: phoneotp()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var userneme = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,

      ),

      body:  Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.deepPurpleAccent,
                      Colors.blue,
                      Colors.green,
                    ],
                  )
              ),
              width: 300,
              child: TextField(

                controller: userneme,
                decoration: InputDecoration(
                  hintText: ("Enter Username"),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 2
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          color: Colors.green,
                          width: 2
                      )
                  ),
                  prefixIcon: Icon(Icons.contacts_rounded,color: Colors.blue.shade900,),
                ),
              ),

            ),

            Container(height: 10,),
            Container(
              width: 300,
              child: TextField(
                controller: password,
               obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText: ("Enter password"),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                color: Colors.blueAccent,
                width: 2
                   )
                          ),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                color: Colors.green,
                width: 2
                )
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye,),
                  onPressed: (){

                  },
              ),

                prefixIcon: Icon(Icons.password,color: Colors.blue.shade900,),

                  ),
                  ),
            ),
            ElevatedButton(onPressed:(){
                  String  uname = userneme.text.toString();
                  String pass = password.text;
                  print("Username :- $uname, pass :- $pass");
            },
                child: Text("login")
            )


          ],
        ),
      )
      ,
    );
  }
}
