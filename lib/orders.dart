import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
            child: Text(
          'Orders',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
        )),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: height * 0.12,
                color: Colors.black,
                width: width,
                margin: EdgeInsets.all(height * .015),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(height * .008),
                      height: height * .11,
                      width: width * .235,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/images/verumchor1.jpg'),
                              fit: BoxFit.cover),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(height * .019)),
                    ),
                    SizedBox(
                      width: width * .03,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * .015,
                        ),
                        Text(
                          'Chicken Biriyani',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: height * .017),
                        ),
                        SizedBox(
                          height: height * .002,
                        ),
                        Text(
                          'Token No:032',
                          style: TextStyle(
                              fontSize: height * .015, color: Colors.grey),
                        ),
                        SizedBox(
                          height: height * .002,
                        ),
                        Text(
                          'Quality:5',
                          style: TextStyle(
                              fontSize: height * .015, color: Colors.grey),
                        ),
                        Text(
                          '₹70',
                          style: TextStyle(
                              fontSize: height * .018,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: height * .008),
                      width: width * .24,
                      height: height * .045,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height * .009),
                        color: Color(0xff53e510),
                      ),
                      child: Center(
                        child: Text(
                          "Delivered",
                          style: TextStyle(
                              fontSize: height * .017,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Color(0xff53e510),
                    //     elevation: 0,
                    //     fixedSize: Size(80, 30),
                    //     minimumSize: Size(10, 15),
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(7),
                    //     ),
                    //   ),
                    //   child: Text(
                    //     'Accepted',
                    //     style: TextStyle(
                    //         fontSize: 10,
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.w500),
                    //   ),
                    // ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
