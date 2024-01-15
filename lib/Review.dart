import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
            child: Text(
          'Donation History',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
        )),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset("assets/images/ic_launcher.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: MediaQuery.of(context).size.height * 0.234,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text('Shanoof T'),
                            SizedBox(
                              width: 7,
                            ),
                            Text('1 year ago', style: TextStyle(fontSize: 10)),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz_sharp))
                          ],
                        ),
                        Text('1 year ago',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        Text("""The biryani was a delightful explosion of flavors, with perfectly cooked, fragrant basmati rice infused with aromatic spices.Awesome..!! 👍 """),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset("assets/images/ic_launcher.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffdffcd2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: MediaQuery.of(context).size.height * 0.169,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text('Shaheen '),
                            SizedBox(
                              width: 7,
                            ),
                            Text('1 year ago', style: TextStyle(fontSize: 10)),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz_sharp))
                          ],
                        ),
                        Text('1 year ago',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500)),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 13,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 13,
                              color: Colors.amber,
                            ),
                            Icon(
                              Icons.star,
                              size: 13,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        SizedBox(height: 3,),
                        Text("""very good taste and nice food"""),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
