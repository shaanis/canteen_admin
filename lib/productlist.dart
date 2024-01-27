import 'package:canteen_admin/AddItem.dart';
import 'package:flutter/material.dart';

import 'delete.dart';
import 'edit.dart';

class Productlist extends StatefulWidget {
  const Productlist({super.key});

  @override
  State<Productlist> createState() => _ProductlistState();
}
enum MenuValues{
  EditItem,
  DeleteItem
}

class _ProductlistState extends State<Productlist> {
  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // toolbarHeight: 56,
        backgroundColor: Colors.red,
        elevation: 0,
        title: Center(
            child: Text(
          'FOOD LIST',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: height*.11,
                      color: Colors.white,
                      width: double.infinity,
                      margin: EdgeInsets.all(height*.01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(height*.007),
                            height: height*.11,
                            width: width*.25,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/verumchor1.jpg'),
                                    fit: BoxFit.cover),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(height*.01)),
                          ),
                          SizedBox(
                            width: width*.015,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chicken Biriyani',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: height*.013),
                              ),
                              SizedBox(
                                height: height*.011,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: height*.019,
                                  ),
                                  SizedBox(
                                    width: width*.015,
                                  ),
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                        color: Colors.amber, fontSize: height*.013),
                                  ),
                                  SizedBox(
                                    width: width*.017,
                                  ),
                                  Text(
                                    '(10 Reviews)',
                                    style: TextStyle(
                                        color: Color(0xff808180), fontSize: height*.012),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height*.011,
                              ),
                              Text(
                                '₹70',
                                style: TextStyle(
                                    fontSize: height*.018, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                           Spacer(),
                          PopupMenuButton<MenuValues>(
                            itemBuilder: (BuildContext context) => [
                              PopupMenuItem(
                                child: Row(
                                  children: [
                                    Icon(Icons.edit_outlined),
                                    SizedBox(width: width*.015,),
                                    Text('Edit Item',style: TextStyle(fontSize: height*.018),),
                                  ],
                                ),
                                  value: MenuValues.EditItem
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: [
                                    Icon(Icons.delete_outline_outlined),
                                    SizedBox(width: width*.015,),
                                    Text('Delete Item',style: TextStyle(fontSize: height*.018),),
                                  ],
                                ),
                                  value: MenuValues.DeleteItem
                              ),
                            ],
                            onSelected: (value){
                              switch(value){
                                case MenuValues.EditItem:
                                  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>EditItem()));
                                break;
                                case MenuValues.DeleteItem:
                                  Navigator.of(context).push(MaterialPageRoute(builder:(c)=>DeleteItem()));
                                  break;
                              }
                            },
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(height: height*.007,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItem(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Color(0xff53e510),
                  minimumSize: Size(350, 45),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(height*.19))),
              child: Text(
                'Add New Item',
                style: TextStyle(fontWeight: FontWeight.w400),
              )),
          SizedBox(height: height*.002,)
        ],
      ),
    );
  }
}
