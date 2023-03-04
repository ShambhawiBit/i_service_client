import 'package:flutter/material.dart';
import 'package:i_service_client/Buy_parts_for_mobile/buy_parts_for_mobile.dart';
import 'package:i_service_client/Category/cat.dart';
import 'package:i_service_client/signup/Signup2.dart';
import 'package:i_service_client/signup/signup.dart';
import 'Frame/Frame.dart';
import 'Login/Login_screen.dart';
import 'Login/Logintwo.dart';
import 'Onboarding/Onboarding1.dart';
import 'Profile/profile2.dart';
import 'Profile/profile_details.dart';
import 'Profile/profileone.dart';
import 'navpage/navigationbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // Category: const search(),
      //home:buyParts()
    home: NavBar(),
      //home:signup(),
      //home: login(),
      //home: logintwo(),
      //home: profileone(),
      //home: profile2()
      // home: page_controller(),
      //home: frame(),
      //home: Signuptwo(),
    );
  }
}




