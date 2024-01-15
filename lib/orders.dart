import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
        title: Center(
            child: Text(
          'Orders',
          style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 14,
              color: Colors.black),
        )),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    height: 110,
                    color: Colors.white,
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/verumchor1.jpg'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Chicken Biriyani',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 11),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Token No:032',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Quality:5',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Row(
                              children: [
                                Text(
                                  '₹70',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff53e510),
                            elevation: 0,
                            fixedSize: Size(80, 30),
                            minimumSize: Size(10, 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          child: Text(
                            'Accepted',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 110,
                    color: Colors.white,
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/verumchor1.jpg'),
                                  fit: BoxFit.cover),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Chicken Biriyani',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 11),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Token No:032',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Quality:5',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Row(
                              children: [
                                Text(
                                  '₹70',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.white,
                              fixedSize: Size(80, 30),
                              minimumSize: Size(10, 15),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Color(0xfffd3327), width: 0.9),
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            child: Text(
                              'Pending',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w400),
                            )),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
