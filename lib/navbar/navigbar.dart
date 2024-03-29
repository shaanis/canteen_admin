
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../donationhistory.dart';
import '../mainscreen.dart';
import '../orders.dart';
import '../productlist.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int myIndex = 0;
  List<Widget> widgetList =  [
    MainScreen(),
    Productlist(),
    OrdersPage(),
    DonationHistory(),
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
