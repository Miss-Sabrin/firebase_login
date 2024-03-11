import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_form/firebase_options.dart';
import 'package:login_form/signin.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  options: DefaultFirebaseOptions.currentPlatform,
 );
  runApp(MaterialApp(
    home: SignIn(),
  ));
}

