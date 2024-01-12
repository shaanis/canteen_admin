import 'package:canteen_admin/AddItem.dart';
import 'package:flutter/material.dart';

class Productlist extends StatefulWidget {
  const Productlist({super.key});

  @override
  State<Productlist> createState() => _ProductlistState();
}

class _ProductlistState extends State<Productlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 90,
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
                          image: AssetImage('assets/images/verumchor1.jpg'),
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
                    Text(
                      'Chicken Biriyani',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.9',
                          style: TextStyle(color: Colors.amber, fontSize: 10),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(10 Reviews)',
                          style:
                              TextStyle(color: Color(0xff808180), fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '₹70',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  width: 90,
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.more_horiz_sharp)
                ),
              ],
            ),
          ),
          Container(
            height: 90,
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
                          image: AssetImage('assets/images/verumchor1.jpg'),
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
                    Text(
                      'Chicken Biriyani',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.9',
                          style: TextStyle(color: Colors.amber, fontSize: 10),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(10 Reviews)',
                          style:
                              TextStyle(color: Color(0xff808180), fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '₹70',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                  SizedBox(width: 90,),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.more_horiz_sharp)
                ),
              ],
            ),
          ),
          Spacer(),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddItem()));
              },
              style: ElevatedButton.styleFrom(elevation: 0,
                backgroundColor: Color(0xff53e510),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                minimumSize: Size(350, 50)
              ),
              child: Text('Add new item'))
        ],
      ),
    );
  }
}
