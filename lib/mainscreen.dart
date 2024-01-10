import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _value = "-1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 48.0, bottom: 15, left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurStyle: BlurStyle.inner,
                            color: Color(0xffdadce7),
                            blurRadius: 1,
                            spreadRadius: 0,
                            offset: Offset(0, 4),
                          )
                        ]),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                      child: InkWell(
                        /* onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => profile()));
                          },*/
                        child: Image.asset("assets/images/ic_launcher.png",
                            width: 28, height: 28),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.765,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffe6fcdc),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '20',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'TODAY ORDERS',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff808180),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Revenue",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff808180),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text("₹2,250"),
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xff808180), width: 0),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(top: 20, bottom: 20),
                          ),
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                'Daily',
                                style: TextStyle(fontSize: 10),
                              ),
                              value: '-1',
                            ),
                            DropdownMenuItem(
                              child: Text(
                                'Weekly',
                                style: TextStyle(fontSize: 10),
                              ),
                              value: '1',
                            ),
                            DropdownMenuItem(
                              child: Text(
                                'Monthly',
                                style: TextStyle(fontSize: 10),
                              ),
                              value: '2',
                            ),
                            DropdownMenuItem(
                              child: Text(
                                'Yearly',
                                style: TextStyle(fontSize: 10),
                              ),
                              value: '3',
                            ),
                          ],
                          onChanged: (v) {
                            setState(() {
                              _value = v.toString();
                            });
                          },
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "See Details",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff53e510),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.rectangle,
                      //borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text("Reviews"),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "See All Reviews",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff53e510),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15,),
                      Icon(Icons.star,color: Colors.amber,size: 28,),
                      SizedBox(width: 5,),
                      Text("4.9",style: TextStyle(
                          fontWeight: FontWeight.bold,color: Colors.amber),),
                      SizedBox(width: 20,),
                      Text("Total 20 Reviews",style: TextStyle(
                          fontWeight: FontWeight.w400,fontSize: 12,
                          color: Colors.black),)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(onTap: (){
                           // Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                          },
                            child: Container(
                              margin: EdgeInsets.only(right: 25),
                              color: Colors.white,
                              //margin: EdgeInsets.all(10),
                              height: 150,width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 100,width: 150,
                                    decoration: BoxDecoration(color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image:  AssetImage('assets/images/verumchor1.jpg',),
                                        fit: BoxFit.cover,
                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      SizedBox(width: 5,),
                                      Text('Chicken Biriyani',style: TextStyle(
                                          fontSize: 10,fontWeight: FontWeight.w500
                                      ),),
                                      SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                                      Text("₹70",style: TextStyle(
                                          fontSize: 13,fontWeight: FontWeight.w500
                                      ),),

                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: RatingBar.builder(
                                        itemSize: 11,
                                        initialRating: 3,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {}),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(onTap: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                          },
                            child: Container(
                              margin: EdgeInsets.only(right: 25),
                              color: Colors.white,
                              //margin: EdgeInsets.all(10),
                              height: 150,width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 100,width: 150,
                                    decoration: BoxDecoration(color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image:  AssetImage('assets/images/verumchor1.jpg',),
                                        fit: BoxFit.cover,
                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      SizedBox(width: 5,),
                                      Text('Chicken Biriyani',style: TextStyle(
                                          fontSize: 10,fontWeight: FontWeight.w500
                                      ),),
                                      SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                                      Text("₹70",style: TextStyle(
                                          fontSize: 13,fontWeight: FontWeight.w500
                                      ),),

                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: RatingBar.builder(
                                        itemSize: 11,
                                        initialRating: 3,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {}),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(onTap: (){
                           // Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                          },
                            child: Container(
                              margin: EdgeInsets.only(right: 25),
                              color: Colors.white,
                              //margin: EdgeInsets.all(10),
                              height: 150,width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 100,width: 150,
                                    decoration: BoxDecoration(color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image:  AssetImage('assets/images/verumchor1.jpg',),
                                        fit: BoxFit.cover,
                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      SizedBox(width: 5,),
                                      Text('Chicken Biriyani',style: TextStyle(
                                          fontSize: 10,fontWeight: FontWeight.w500
                                      ),),
                                      SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                                      Text("₹70",style: TextStyle(
                                          fontSize: 13,fontWeight: FontWeight.w500
                                      ),),

                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: RatingBar.builder(
                                        itemSize: 11,
                                        initialRating: 3,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {}),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(onTap: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                          },
                            child: Container(
                              margin: EdgeInsets.only(right: 25),
                              color: Colors.white,
                              //margin: EdgeInsets.all(10),
                              height: 150,width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 100,width: 150,
                                    decoration: BoxDecoration(color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image:  AssetImage('assets/images/verumchor1.jpg'),
                                        fit: BoxFit.cover,
                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      SizedBox(width: 5,),
                                      Text('Chicken Biriyani',style: TextStyle(
                                          fontSize: 10,fontWeight: FontWeight.w500
                                      ),),
                                      SizedBox(width: MediaQuery.of(context).size.width*0.12,),
                                      Text("₹70",style: TextStyle(
                                          fontSize: 13,fontWeight: FontWeight.w500
                                      ),),

                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: RatingBar.builder(
                                        itemSize: 11,
                                        initialRating: 3,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {}),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}