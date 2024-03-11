import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_form/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _email = TextEditingController();
  final _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _pass,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
            onPressed: () async{
              try{
                await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text, password: _pass.text);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              }catch(e){
                print(e.toString());
              }
              
              setState(() {
                
              });
            },
            child: Text("Sign In"),
          ),
        ],
      ),
    );
  }
}
