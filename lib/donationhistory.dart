import 'package:flutter/material.dart';

class DonationHistory extends StatelessWidget {
  const DonationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,elevation: 0,
        title: Center(
            child: Text(
              'Donation History',
              style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 14,
                  color: Colors.black),
            )),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 26,
              width: double.infinity,
              color: Color(0xffcccccd),
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0,top: 6),
                child: Text('January 2024',style: TextStyle(fontSize: 12),),
              ),
            ),
            SizedBox(height: 15,),
            Container(margin: EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color(0xffdffcd2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset("assets/images/ic_launcher.png"),
                  ),
                  SizedBox(width: 15,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shanoof T',style: TextStyle(
                          fontSize: 12,fontWeight: FontWeight.bold),),
                      SizedBox(height: 3,),
                      Text('11:44,01 January 2024',style: TextStyle(
                          fontSize: 10,fontWeight: FontWeight.w400),),
                    ],
                  ),
                  Spacer(),
                  Text('₹70')
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(margin: EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color(0xffdffcd2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset("assets/images/ic_launcher.png"),
                  ),
                  SizedBox(width: 15,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shaheen ',style: TextStyle(
                          fontSize: 12,fontWeight: FontWeight.bold),),
                      SizedBox(height: 3,),
                      Text('11:44,01 January 2024',style: TextStyle(
                          fontSize: 10,fontWeight: FontWeight.w400),),
                    ],
                  ),
                  Spacer(),
                  Text('₹50')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
