import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white,

          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 6,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffbfc6d1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Text("20 Orders Today"),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            child: Expanded(
              child: ListView.builder(
                  itemCount: 14,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
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
                                  SizedBox(
                                    width: 30,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff53e510),
                                      elevation: 0,
                                      fixedSize: Size(70, 30),
                                      minimumSize: Size(10, 15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    child: Text(
                                      'Done',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Colors.white,
                                        fixedSize: Size(70, 30),
                                        minimumSize: Size(10, 15),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: Color(0xfffd3327),
                                              width: 0.9),
                                          borderRadius:
                                              BorderRadius.circular(7),
                                        ),
                                      ),
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w400),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
