import 'package:canteen_admin/login.dart';
import 'package:canteen_admin/navbar/navigbar.dart';
import 'package:canteen_admin/productlist.dart';
import 'package:flutter/material.dart';

import 'mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: navigation()
      //SignIn()//prolist()
      //navigation()
        //Productlist()
    );
  }
}

