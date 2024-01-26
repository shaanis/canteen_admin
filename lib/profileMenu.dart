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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
              // SizedBox(height: height*.0001,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15),
                    child: Container(
                      width: width*.18,
                      height: height*.09,
                      decoration: BoxDecoration(
                        color: Color(0xffdffcd2),
                        borderRadius: BorderRadius.circular(height*1),
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
                              fontWeight: FontWeight.w500, fontSize: width*0.05),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: height*.04,),
              Container(
                padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                  left: height*.025,
                  right: height*.02,
                  top: height*.006,
                  bottom: height*.03,
                ),
                width: width,
                height: height*.09,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(height*.015)),
                child: InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person_outline_sharp,
                          color: Color(0xfff96e3e),
                        ),
                      ),
                      SizedBox(width: width*.025,),
                      Text("Personal Info"),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: height*.02),
                    ],
                  ),
                  onTap:() {
                    Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ProfileEdit()),
                              );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                  left: height*.025,
                  right: height*.02,
                  top: height*.006,
                  bottom: height*.03,
                ),
                width: width,
                height: height*.09,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(height*.015)),
                child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.settings_outlined,
                          color: Color(0xff403dfa),
                        ),
                      ),
                      SizedBox(width: width*.025,),
                      Text("Maintanance"),
                      Spacer(),
                      FlutterSwitch(
                        width: width*.1,
                          height: height*.0275,
                          toggleSize: height*.015,
                          value: status,
                          activeColor: Color(0xff52e311),
                          onToggle: (val){
                        setState(() {
                          status = val;
                        });
                          })
                    ],
                  ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                    left: height*.025,
                    right: height*.02,
                    top: height*.006,
                    bottom: height*.03,
                ),
                width: width,
                height: height*.09,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(height*.015)),
                child: InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/bill1.png',scale: 13,color: Color(0xff18cde7),),
                      ),
                      SizedBox(width: width*.025,),
                      Text("Manage Orders"),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: height*.02),
                    ],
                  ),
                  onTap:() {
                    /* Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ProfileEdit()),
                              );*/
                  },
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                  left: height*.025,
                  right: height*.02,
                  top: height*.006,
                  bottom: height*.03,
                ),
                width: width,
                height: height*.09,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(height*.015)),
                child: InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.history,
                          color: Color(0xfff96e3e),
                        ),
                      ),
                      SizedBox(width: width*.025,),
                      Text("Donation History"),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: height*.02),
                    ],
                  ),
                  onTap:() {
                    Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DonationHistory()),
                              );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                  left: height*.025,
                  right: height*.02,
                  top: height*.006,
                  bottom: height*.03,
                ),
                width: width,
                height: height*.09,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(height*.015)),
                child: InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person_outline_sharp,
                          color: Color(0xfff96e3e),
                        ),
                      ),
                      SizedBox(width:width*.025,),
                      Text("Personal Info"),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: height*.02),
                    ],
                  ),
                  onTap:() {
                    /* Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ProfileEdit()),
                              );*/
                  },
                ),
              ),
              // SizedBox(height: height*.02,),
              Container(padding: EdgeInsets.only(left: 10,right: 20,bottom: 10,top: 10),
                margin: EdgeInsets.only(
                  left: height*.025,
                  right: height*.02,
                  top: height*.006,
                  bottom: height*.004,
                ),
                width: width,
                height: height*.09,
                decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(height*.015)),
                child: InkWell(
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
                      SizedBox(width: width*.025,),
                      Text("Log Out"),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: height*.02),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
