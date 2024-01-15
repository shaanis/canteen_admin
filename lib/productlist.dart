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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 56,
        backgroundColor: Colors.white,
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
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
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
                              Text(
                                'Chicken Biriyani',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 11),
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
                                    style: TextStyle(
                                        color: Colors.amber, fontSize: 10),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '(10 Reviews)',
                                    style: TextStyle(
                                        color: Color(0xff808180), fontSize: 10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '₹70',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
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
                                    Text('Edit Item'),
                                  ],
                                ),
                                  value: MenuValues.EditItem
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: [
                                    Icon(Icons.delete_outline_outlined),
                                    Text('Delete Item')
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
          SizedBox(height: 10,),
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
                      borderRadius: BorderRadius.circular(30))),
              child: Text(
                'Add New Item',
                style: TextStyle(fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }
}
