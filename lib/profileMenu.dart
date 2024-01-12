import 'package:flutter/material.dart';

class ProfileMenu extends StatefulWidget {
  const ProfileMenu({super.key});

  @override
  State<ProfileMenu> createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        child: Column(
          children: [
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
            SizedBox(height: 50,),
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
              child: Column(
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
              child: Column(
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
              child: Column(
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
              child: Column(
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
          ],
        ),
      ),
    );
  }
}
