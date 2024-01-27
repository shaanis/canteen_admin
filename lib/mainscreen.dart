import 'package:canteen_admin/Review.dart';
import 'package:canteen_admin/bottomsheet/bottom.dart';
import 'package:canteen_admin/productlist.dart';
import 'package:canteen_admin/profileMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fl_chart/fl_chart.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _value = "Daily";
  List<String> dropList = ["Daily", "Weekly", "Monthly", "Yearly"];

  final List<Color> gradientColors = [
    Color(0xff63e726),
    Color(0xff63e726),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, bottom: 14, left: 15, right: 15),
                child: Row(
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                          fontSize: width * .055, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height * .05),
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
                        radius: height * .025,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.grey,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileMenu()));
                          },
                          child: Image.asset(
                            "assets/images/ic_launcher.png",
                            width: width * .09,
                            height: height * .05,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(height * .015),
                width: width,
                height: height * .78,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        _showBottomSheet(context);
                      },
                      child: Container(
                        width: width,
                        height: height * .13,
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
                                fontSize: height * .03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'TODAY ORDERS',
                              style: TextStyle(
                                fontSize: height * .015,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff808180),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height * .035),
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
                                fontSize: height * .016,
                                color: Color(0xff808180),
                              ),
                            ),
                            SizedBox(
                              height: height * .003,
                            ),
                            Text("₹2,250"),
                          ],
                        ),
                        SizedBox(
                          width: width * .21,
                          height: height * .045,
                          child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  enabled: false,
                                  suffixIcon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black,
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(_value)),
                                  ),
                                  border: OutlineInputBorder()),
                              value: _value,
                              items: dropList
                                  .map((e) => DropdownMenuItem(
                                      value: e, child: Text(e)))
                                  .toList(),
                              onChanged: (v) {
                                setState(() {
                                  _value = v.toString();
                                });
                              }),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "See Details",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: height * .015,
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
                      height: height * .2,
                      width: width,
                      child: Stack(children: [
                        LineChart(
                          LineChartData(
                            minX: 0,
                            maxX: 11,
                            minY: 0,
                            maxY: 5,
                            gridData: FlGridData(
                                show: true,
                                getDrawingHorizontalLine: (value) {
                                  return FlLine(
                                      color: Color(0xff63e726),
                                      strokeWidth: .5);
                                },
                                getDrawingVerticalLine: (value) {
                                  return FlLine(
                                      color: Color(0xff63e726),
                                      strokeWidth: .5);
                                }),
                            borderData: FlBorderData(
                                show: true,
                                border: Border.all(
                                    color: Color(0xff37434d),
                                    width: width * .005)),
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  FlSpot(0, 3),
                                  FlSpot(2.6, 2),
                                  FlSpot(4.9, 5),
                                  FlSpot(6.8, 2.5),
                                  FlSpot(8, 4),
                                  FlSpot(9.5, 3),
                                  FlSpot(11, 4),
                                ],
                                isCurved: true,
                                color: Color(0xff63e726),
                                // barWidth: 3,
                                // belowBarData: BarAreaData(
                                //   show: true,
                                //   color: Color(0xff63e726)
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: height * .028,
                    ),
                    Row(
                      children: [
                        Text("Reviews"),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReviewPage()));
                          },
                          child: Text(
                            "See All Reviews",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: height * .0145,
                              color: Color(0xff53e510),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .018,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width * .025,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: height * .035,
                        ),
                        SizedBox(
                          width: width * .023,
                        ),
                        Text(
                          "4.9",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.amber),
                        ),
                        SizedBox(
                          width: width * .038,
                        ),
                        Text(
                          "Total 20 Reviews",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: height * .016,
                              color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Flexible(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemDetail()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: height*.025),
                              color: Colors.white,
                              height: 20,
                              width: width * .39,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: height * .11,
                                    width: width * .4,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(height*.01),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/images/verumchor1.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height*.013,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width*.01,
                                      ),
                                      Text(
                                        'Chicken Biriyani',
                                        style: TextStyle(
                                            fontSize: height*.013,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.11,
                                      ),
                                      Text(
                                        "₹70",
                                        style: TextStyle(
                                            fontSize: height*.017,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height*.005,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: RatingBar.builder(
                                        itemSize: height*.011,
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
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(shape:
    OutlineInputBorder(borderSide: BorderSide.none,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))) ,
        context: context,
        builder: (context) => BottomSheetPage());
  }
}
