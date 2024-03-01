import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const Login());
}
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( backgroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.black),

          leading: BackButton(),
        ),
        body: Column(
          children: [ Text("Sign Up"),
            TextField(
            decoration: InputDecoration(
              hintText: "E-mail address",
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ) ,
              fillColor: Colors.redAccent,
              filled: true,
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.redAccent,),),

            TextButton(onPressed: (){},
              style:TextButton.styleFrom(padding: EdgeInsets.symmetric(
                  horizontal: 10,vertical: 12),
                  backgroundColor: Colors.redAccent),


              child: Text("Login",style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
