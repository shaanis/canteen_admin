import 'package:canteen_admin/donationhistory.dart';
import 'package:canteen_admin/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'logoutAlert.dart';

class ProfileMenu extends StatefulWidget {
  const ProfileMenu({super.key});

  @override
  State<ProfileMenu> createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Padding(
          padding: const EdgeInsets.only(left: 78.0),
          child: Text(
            "Profile",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffdffcd2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset("assets/images/ic_launcher.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Column(
                      children: [
                        Text(
                          "Harilal ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 5,
                  bottom: 10,
                ),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person_outline_sharp,
                              color: Color(0xfff96e3e),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Personal Info"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 15),
                        ],
                      ),
                      onTap:() {
                        Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ProfileEdit()),
                                  );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 5,
                  bottom: 10,
                ),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.settings_outlined,
                              color: Color(0xff403dfa),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Maintanance"),
                          Spacer(),
                          FlutterSwitch(
                            width: 42,
                              height: 23,
                              toggleSize: 15,
                              value: status,
                              onToggle: (val){
                            setState(() {
                              status = val;
                            });
                              })
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 5,
                  bottom: 10,
                ),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset('assets/images/bill1.png',scale: 13,color: Color(0xff18cde7),),
                          ),
                          SizedBox(width: 10,),
                          Text("Manage Orders"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 15),
                        ],
                      ),
                      onTap:() {
                        /* Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ProfileEdit()),
                                  );*/
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 5,
                  bottom: 10,
                ),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.history,
                              color: Color(0xfff96e3e),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Donation History"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 15),
                        ],
                      ),
                      onTap:() {
                        Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => DonationHistory()),
                                  );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 5,
                  bottom: 10,
                ),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person_outline_sharp,
                              color: Color(0xfff96e3e),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Personal Info"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 15),
                        ],
                      ),
                      onTap:() {
                        /* Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ProfileEdit()),
                                  );*/
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 5,
                  bottom: 10,
                ),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        final action = await AlertDialogs.yesCancelDialog(context,'Logout?','Are you sure want to logout ?');
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.logout_outlined,
                              color: Color(0xfff94959),
                            ),

                          ),
                          SizedBox(width: 10,),
                          Text("Log Out"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
