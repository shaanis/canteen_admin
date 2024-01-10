import 'package:canteen_admin/navbar/screen1.dart';
import 'package:canteen_admin/navbar/screen2.dart';
import 'package:canteen_admin/navbar/screen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../mainscreen.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int myIndex = 0;
  List<Widget> widgetList = const [
    MainScreen(),
    screen1(),
    sreen2(),
    screen3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          children: widgetList,
          index: myIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        //selectedItemColor: Color(0xff58e517),
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home,color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_rows_outlined,color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              label: ''),
        ],
      ),
    );
  }
}
